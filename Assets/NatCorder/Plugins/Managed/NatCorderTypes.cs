/* 
*   NatCorder
*   Copyright (c) 2017 Yusuf Olokoba
*/

namespace NatCorderU.Core {

    using UnityEngine;
    using Extensions;
    using Display = UnityEngine.Screen;

    #region --Delegates--
    /// <summary>
    /// Delegate type used to provide the path to a recorded video
    /// </summary>
    [Doc(@"VideoCallback")]
    public delegate void VideoCallback (string path);
    #endregion


    #region --Value Types--

    /// <summary>
    /// Value type used to specify recording configuration
    /// </summary>
    [Doc(@"Configuration")]
    public struct Configuration {
        /// <summary>
        /// Video width
        /// </summary>
        [Doc(@"ConfigurationWidth")]
        public readonly int width;
        /// <summary>
        /// Video height
        /// </summary>
        [Doc(@"ConfigurationHeight")]
        public readonly int height;
        /// <summary>
        /// Video framerate
        /// </summary>
        [Doc(@"ConfigurationFramerate")]
        public readonly int framerate;
        /// <summary>
        /// Video bitrate in bits per second
        /// </summary>
        [Doc(@"ConfigurationBitrate")]
        public readonly int bitrate;
        /// <summary>
        /// Video keyframe interval in seconds
        /// </summary>
        [Doc(@"ConfigurationKeyframes")]
        public readonly int keyframeInterval;
        /// <summary>
        /// Screen recording configuration
        /// </summary>
        [Doc(@"ConfigurationScreen")]
        public static Configuration Screen { get { return new Configuration(Display.width, Display.height, Application.targetFrameRate, (int)(960 * 540 * 11.4f), 3); }}
        /// <summary>
        /// Create a recoridng configuration
        /// </summary>
        /// <param name="width">Video width</param>
        /// <param name="height">Video height</param>
        /// <param name="framerate">Video framerate</param>
        [Doc(@"ConfigurationCtor")]
        public Configuration (int width, int height, int framerate = 30) : this(width, height, framerate, Screen.bitrate, Screen.keyframeInterval) {}
        /// <summary>
        /// Create a recoridng configuration
        /// </summary>
        /// <param name="width">Video width</param>
        /// <param name="height">Video height</param>
        /// <param name="framerate">Video framerate</param>
        /// <param name="bitrate">Video bitrate in bits per second</param>
        /// <param name="keyframeInterval">Video keyframe interval in seconds</param>
        [Doc(@"ConfigurationCtor")]
        public Configuration (int width, int height, int framerate, int bitrate, int keyframeInterval) {
            this.width = width;
            this.height = height;
            this.framerate = framerate > 0 ? framerate : 30;
            this.bitrate = bitrate;
            this.keyframeInterval = keyframeInterval;
        }

        public override string ToString () {
            return "{ " + string.Format("{0}x{1} @{2}Hz {3}kbps {4}I", width, height, framerate, bitrate / 1024f, keyframeInterval) + " }";
        }
    }

    /// <summary>
    /// Encoder surface for recording a video frame
    /// </summary>
    [Doc(@"Frame")]
    public sealed class Frame { // We make it a class instead of struct so we get reference equality
        
        /// <summary>
        /// Frame timestamp in nanoseconds
        /// </summary>
        [Doc(@"FrameTimestamp")]
        public long timestamp = -1;
        private readonly RenderTexture surface;

        public Frame (RenderTexture surface, long timestamp = -1) {
            this.surface = surface;
            this.timestamp = timestamp;
        }

        public static implicit operator RenderTexture (Frame frame) {
            return frame.surface;
        }
    }
    #endregion
}