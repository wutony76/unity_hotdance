	using System.Collections;
	using System.Collections.Generic;
	using UnityEngine;
	using UnityEngine.UI;
	using System.IO;
	using System;
	using NatCorderU.Core; 
	using System.Threading;

	public class videoRecording : MonoBehaviour {
		public Texture2D texture;
		public AudioSource audioSource;
		public AudioSource clickSound;
		public Text msg;
		public bool isRecording;

		[Header("Recording")]
		public bool recordMicrophoneAudio;
		public Button StartRecordButton;
		public Button StopRecordButton;



		bool photoSaved = false;

		void Start()
		{
			texture = null;
        //StartRecordButton.gameObject.SetActive(true);
        StartRecordButton.gameObject.SetActive(true);
        StopRecordButton.gameObject.SetActive(false);
			msg.text = "";
			isRecording = false;
		}

		public void ScreenShot()
		{
			
			StartCoroutine(ScreenshotManager.Save("Image", "ARDemo", true));
			//clickSound.Play();
			msg.text = "拍照成功";
			Invoke ("resetText", 1.5f);
		}

		void resetText() {
			msg.text = "";
		}

		IEnumerator SaveAssetImage()
		{
			byte[] bytes = texture.EncodeToPNG();
			string name = "/" + System.DateTime.Now.ToString("yyyyMMdd_HHmmss") + ".png";
			string path = Application.persistentDataPath + name;
			File.WriteAllBytes(path, bytes);
			

			yield return new WaitForEndOfFrame();

			StartCoroutine(ScreenshotManager.SaveExisting(path, true));
			
		}

		public void StartRecording()
		{
			isRecording = true;
			//clickSound.Play();
			Debug.Log("StartRecording");
			// Create a recording configuration
			const float DownscaleFactor = 2f / 3;
			var configuration = new Configuration((int)(Screen.width * DownscaleFactor), (int)(Screen.height * DownscaleFactor));
			// Start recording with microphone audio
			if (recordMicrophoneAudio)
			{
				// Start the microphone
				audioSource.clip = NatCorderU.Extensions.Microphone.StartRecording();
				audioSource.loop = true;
				audioSource.Play();
				// Start recording with microphone audio
				Replay.StartRecording(Camera.main, configuration, OnReplay, audioSource, true);
			}
			// Start recording without microphone audio
			else Replay.StartRecording(Camera.main, configuration, OnReplay);

			StartRecordButton.gameObject.SetActive(false);
			StopRecordButton.gameObject.SetActive(true);
		}

		public void StopRecording()
		{
			isRecording = false;
			//clickSound.Play();
			Debug.Log("StopRecording");
			// Stop playing mic audio
			if (recordMicrophoneAudio)
			{
				audioSource.Stop();
				NatCorderU.Extensions.Microphone.StopRecording();
			}
			// Stop recording
			Replay.StopRecording();

			StartRecordButton.gameObject.SetActive(true);
			StopRecordButton.gameObject.SetActive(false);
		}

		void OnReplay(string path)
		{
			Debug.Log("Saved recording to: " + path);
			//text.text = ("Saved recording to: " + path);
			#if UNITY_IOS || UNITY_ANDROID
			// Playback the video


		if(Application.platform == RuntimePlatform.Android) {
			string androidPath = "/../../../../DCIM/ARVideo/";
			string deepAndroidPath = Application.persistentDataPath + androidPath;
			string pathonly = Path.GetDirectoryName(deepAndroidPath);
			string fileName = Path.GetFileName(path);
			Directory.CreateDirectory(pathonly);
			deepAndroidPath += fileName;
			File.Move(path, deepAndroidPath);
			Handheld.PlayFullScreenMovie(deepAndroidPath);


			AndroidJavaClass obj = new AndroidJavaClass( "com.ryanwebb.androidscreenshot.MainActivity" );
			photoSaved = obj.CallStatic<bool>( "scanMedia", deepAndroidPath );





		} else if (Application.platform == RuntimePlatform.IPhonePlayer) {


			Handheld.PlayFullScreenMovie(path);
		}




			//Handheld.PlayFullScreenMovie(path);
			#endif
		}

	}