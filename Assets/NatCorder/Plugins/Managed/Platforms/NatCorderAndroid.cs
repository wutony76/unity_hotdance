/* 
*   NatCorder
*   Copyright (c) 2017 Yusuf Olokoba
*/

namespace NatCorderU.Core.Platforms {

    using UnityEngine;
    using Extensions;
    using NatCamU.Dispatch;
    using FramePool = System.Collections.Generic.Dictionary<int, UnityEngine.RenderTexture>;

    public sealed partial class NatCorderAndroid : AndroidJavaProxy, INatCorder {

        #region --Op vars--
        private Configuration configuration;
        private VideoCallback videoCallback;
        private IAudioSource audioSource;
        private MainDispatch dispatch;
        private FramePool framePool = new FramePool();
        #pragma warning disable 0414
        private readonly IDispatch renderDispatch;
        #pragma warning restore 0414
        private readonly AndroidJavaObject natcorder;
        #endregion


        #region --Properties--
        public bool IsRecording { get { return natcorder.Call<bool>("isRecording"); }}
        public bool Verbose { set { natcorder.Call("setVerboseMode", value); }}
        #endregion


        #region --Operations--

        public NatCorderAndroid () : base("com.yusufolokoba.natcorder.NatCorderDelegate") {
            natcorder = new AndroidJavaObject("com.yusufolokoba.natcorder.NatCorder", this, Application.persistentDataPath);
            renderDispatch = new RenderDispatch();
            Debug.Log("NatCorder: Initialized NatCorder 1.1 Android backend");
        }

        public void StartRecording (Configuration configuration, VideoCallback videoCallback, IAudioSource audioSource) {
            // Make sure that recording size is multiple of two
            configuration = new Configuration(2 * (configuration.width / 2), 2 * (configuration.height / 2), configuration.framerate, configuration.bitrate, configuration.keyframeInterval);
            // Save state
            this.dispatch = new MainDispatch();
            this.configuration = configuration;
            this.videoCallback = videoCallback;
            this.audioSource = audioSource;
            // Start recording
            natcorder.Call("startRecording",
                configuration.width,
                configuration.height,
                configuration.framerate,
                configuration.bitrate,
                configuration.keyframeInterval,
                audioSource != null,
                audioSource != null ? audioSource.sampleRate : 0,
                audioSource != null ? audioSource.sampleCount : 0,
                audioSource != null ? audioSource.channelCount : 0
            );
        }

        public void StopRecording () {
            if (audioSource != null) audioSource.Dispose();
            audioSource = null;
            natcorder.Call("stopRecording");
        }

        public Frame AcquireFrame () {
            return new Frame(
                RenderTexture.GetTemporary(
                    configuration.width,
                    configuration.height,
                    24,
                    RenderTextureFormat.Default,
                    RenderTextureReadWrite.Default,
                    1
                ),
                (long)(Time.realtimeSinceStartup * 1e+9f)
            );
        }

        public void CommitFrame (Frame frame) {
            var handle = ((RenderTexture)frame).GetNativeTexturePtr().ToInt32();
            framePool.Add(handle, frame);
            natcorder.Call("encodeFrame", handle, frame.timestamp);
        }

        public void CommitSamples (float[] sampleBuffer, long timestamp) {
            AndroidJNI.AttachCurrentThread();
            natcorder.Call("encodeSamples", sampleBuffer, timestamp);
        }
        #endregion


        #region --Callbacks--

        private void onEncode (int frame) {
            dispatch.Dispatch(() => {
                // Release RenderTexture
                var surface = framePool[frame];
                RenderTexture.ReleaseTemporary(surface);
                framePool.Remove(frame);
            });
        }

        private void onVideo (string path) {
            dispatch.Dispatch(() => {
                videoCallback(path);
                dispatch.Release();
                dispatch = null;
            });
        }
        #endregion
    }
}