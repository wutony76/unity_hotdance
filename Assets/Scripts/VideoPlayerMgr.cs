using System;
using System.Collections;
using System.Collections.Generic;

using UnityEngine.SceneManagement;

using UnityEngine;
using UnityEngine.Video;


public class VideoPlayerMgr : MonoBehaviour {

  bool isReady = false;


  public VideoPlayer videoPlayer;
	public VideoClip singleClip;
  public VideoClip[] clipData;
  //public VideoClip testClip;
  int clipIndex = 1;


  public GameObject mainObj;


  private int indexScene;

  bool isSettings;
  string webmName;

  //float[] sample = new float[9] { 4.6f, 3.6f, 4.1f, 4.7f, 3.7f, 4.25f, 4.4f, 3.4f, 3.9f };
  float[] sample = new float[9] { 18f, 7.5f, 12.7f, 19.5f, 9.5f, 14f, 16f, 5.5f, 11f };
  float[,] resSample = new float[4, 2] { { 0f, 0f }, { 45f, 48f }, { 35.6f, 38f },  { 40f, 43.2f } };

  private AudioSourceMgr audioMgr;



	//-- sexy dance --
	public int sexyState;
	public const int PLAYERSTOP = 10;
	public const int PLAYERSTART = 11;


  void Start() {
    indexScene = SceneManager.GetActiveScene().buildIndex;
    print("videoClipName  = " + videoPlayer.clip.name);
    webmName = videoPlayer.clip.name;




    if (indexScene == 2){
      audioMgr = GetComponent<AudioSourceMgr>();
    }

	sexyState = PLAYERSTOP;
	videoPlayer.Stop ();

  }

  public void AudioPlay() {
    //videoPlayer.clip = clipData[0];


    if ( !isReady){
      isReady = true;

      if (indexScene == 2) {

        //聲音
        audioMgr.changePath();
        videoPlayer.clip = clipData[0];
        webmName = videoPlayer.clip.name;
      }

      videoPlayer.loopPointReached += EndReached;
      videoPlayer.prepareCompleted += EndPrepare;
      videoPlayer.Prepare();


      if (indexScene == 2) {
        mainObj.GetComponent<GameScript>().updateInfo("說明中... ");
      }

      //videoPlayer.Play();
      //Invoke("delaySettings", 1f);
    }

  }



    



  //test
  void delaySettings() {
    print("delaySettings = " + videoPlayer.clip.length);

    videoPlayer.time = 20;
    print("delaySettings = " + videoPlayer.time);
    //isSettings = false;
  }


  private void Update() {
    if (indexScene == 2) {
      //print("webmName = " + webmName);
      //print("webmName.time = " + videoPlayer.time);
      if (webmName == "avScene3") {
        if (videoPlayer.time >= 34.5) isSettings = true;
        //mainObj.GetComponent<GameScript>().updateInfo("" + videoPlayer.time);
        if (isSettings) {
          //videoPlayer.Stop();
          //AssignPlay(4);

          SelectPlay();

        }
      }


      if (webmName == "startSelect") {
        if (videoPlayer.time >= 0.1) {
          //videoPlayer.time = 0.2f;
          isSettings = true;
        } 
        //mainObj.GetComponent<GameScript>().updateInfo("" + videoPlayer.time);
        if (isSettings) {
          mainObj.GetComponent<GameScript>().updateInfo("請選擇 剪刀. 石頭. 布.");
          videoPlayer.Stop();
          webmName = "";

          mainObj.GetComponent<GameScript>().gameStart(true);
        }
      }



      //start click playing
      if (webmName == "PreparePlay") {
        //print("pppppppppp PreparePlay　=" + videoPlayer.time);
        if (videoPlayer.time >= 4.5) isSettings = true;
        if (isSettings) {
          videoPlayer.Stop();
          webmName = "";
          ResPlay();
        }
      }


      /// 布布 3.4 ---7 -7  ---5.5
      /// 布剪 3.6 ---8 -1  ---7.5
      /// 布石 3.7 ---6 -4  ---9.5
      /// 
      /// 剪布 3.9 ---1  -8 ---11
      /// 剪剪 4.1 ---2  -2 ---12.7
      /// 剪石 4.25 ---0 -5 ---14
      ///
      /// 石布 4.4 ---4  -6  --- 16
      /// 石剪 4.6 ---5  -0  ---18
      /// 石石 4.7 ---3  -3  ---19.5
      /// 
      if (webmName == "ResPlay") {
        //print("videoPlayer ResPlay =" + videoPlayer.time);

        if (videoPlayer.time >= sample[_resIndex]) isSettings = true;
        if (isSettings) {
          videoPlayer.Stop();
          webmName = "";

          mainObj.GetComponent<GameScript>().updateGameRes(_resState);
          //mainObj.GetComponent<GameScript>().gameStart(true);
          print("vvvvvvvvvvvvvvvv _resIndex _end =" + _resIndex  + "  _resState = " + _resState);
          Invoke("ResEnd", 1f);
        }
      }


      // init --- 20~ 33.1
      // hi2  ---   40 ~ 43.2
      // keey ---  35.6 ~ 38
      // bye ---   45~ 48
      // {45,48}, {35.6,38}, {40,43.2}
      if (webmName == "ResEnded") {
        print("webmName = ResEnded");
        //print("webmName = " + videoPlayer.time );
        //print("webmName = " + videoPlayer.name);

        if (videoPlayer.time >= resSample[_resState, 1]) isSettings = true;
        if (isSettings){
          videoPlayer.Stop();
          webmName = "";
          mainObj.GetComponent<GameScript>().gameStart(true);

        }
      }

    }


		//print ( " sexyState =  " + sexyState );

		if(sexyState != PLAYERSTOP && (ulong)videoPlayer.frame >= videoPlayer.frameCount ){
			print ( "eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeend" );
			videoPlayer.clip = singleClip;
			videoPlayer.Play();
			//videoPlayer.Prepare();
		}





    /*
    if (!isSettings) {
      Debug.Log("vvvvvv videoPlayer time= " + videoPlayer.time);
      if (videoPlayer.time >= 25) isSettings = true;

      if (isSettings) {
        videoPlayer.Stop();
      }
    }
    */

  }

	public void SexyStop(){
		sexyState = PLAYERSTOP;
	}

	public void SexyStart(){
		sexyState = PLAYERSTART;
	}





  public void AudioStop() {
    if (isReady) {
      videoPlayer.Stop();

      if (indexScene == 2){
        Resources.UnloadUnusedAssets();
        GC.Collect();

        webmName = "";
        mainObj.GetComponent<GameScript>().updateInfo("請掃圖，開始遊戲... ");
        mainObj.GetComponent<GameScript>().gameStart(false);

        audioMgr.audioPlay();
      }

      isReady = false;
    }

  }


  public void ChangeAudio() {
    clipIndex++;
    print("ChangeAudio");
    //videoPlayer.clip = testClip;
    videoPlayer.clip = clipData[clipIndex % 2];
    videoPlayer.Play();
  }


  public void PlayOriSample() {
    videoPlayer.Stop();

    videoPlayer.clip = clipData[2];
    videoPlayer.Play();

  }




  public void AssignPlay(int index) {
    isSettings = false;
    videoPlayer.Stop();
    /*
    if (indexScene == 2) {
      print("tony aaaaaaaa------AssignPlay  = " + webmName);

      if (index == 4) {
        webmName = "startSelect";
        videoPlayer.time = 0;
        videoPlayer.Play();
      }


      if (webmName != "win" &&
          //webmName != "_hi" && 
          webmName != "keeyItup" &&
          webmName != "hi2"
          ) {
        mainObj.GetComponent<GameScript>().gameStart(true);
      }

      if (indexScene == 2) audioMgr.playBmg();
      
    }
    */

    if(indexScene != 2){
      Debug.Log("tony aaaaaaaa------AssignPlay ");

      Resources.UnloadUnusedAssets();
      GC.Collect();

      videoPlayer.clip = clipData[index];
      webmName = videoPlayer.clip.name;
      videoPlayer.Play();
    }

  }



  //-------------------------------------------------------------------------------------

  public void SelectPlay(){
    isSettings = false;
    //videoPlayer.clip = clipData[4];
    webmName = "startSelect";

    videoPlayer.time = 0;
    videoPlayer.prepareCompleted += EndPrepare;
    videoPlayer.Prepare();

    if (indexScene == 2) audioMgr.playBmg();
  }

  /*
  void delayStartSelect() {
    videoPlayer.time = 0f;
  }
  */



  //-------------------------------------------------------------------------------------

  public void ResPlay() {
    isSettings = false;
    //videoPlayer.clip = clipData[4];
    webmName = "ResPlay";
    videoPlayer.prepareCompleted += EndPrepare;
    videoPlayer.Prepare();
    
  }

  void delayResPlay() {
    print("delayResPlay = " + (sample[_resIndex] - 0.2f));
    videoPlayer.time = sample[_resIndex] - 0.2f;
    //videoPlayer.time = 17.8;
  }


  //-------------------------------------------------------------------------------------

  public void ResEnd() {
    isSettings = false;
    webmName = "ResEnded";

    videoPlayer.prepareCompleted += EndPrepare;
    videoPlayer.Prepare();
  }


  void delayResEnd(){
    print("delayResEnd =" + resSample[_resState, 0] );
    //videoPlayer.time = 45;
    videoPlayer.time = resSample[_resState, 0];


  }



  //-------------------------------------------------------------------------------------

  //int _selfRes;
  //int _avRes;
  int _resIndex;
  int _resState;

  public void PreparePlay( int resIndex, int resState ) {
    _resIndex = resIndex;
    _resState = resState;

    isSettings = false;
    //videoPlayer.clip = clipData[4];

    videoPlayer.prepareCompleted += EndPrepare;
    videoPlayer.Prepare();
    webmName = "PreparePlay";
  }

  void delayPreparePlay() {
    videoPlayer.time = 2;
  }

  
  void delayWelcom() {
    videoPlayer.time = 20;
    //videoPlayer.time = 35;
  }


  //-------------------------------------------------------------------------------------
  void delayPlaying(){
    webmName = "GameEnd";
    Resources.UnloadUnusedAssets();
    GC.Collect();
    AssignPlay(_resState);
  }


  void EndPrepare(VideoPlayer vPlayer) {

    if (webmName == "avScene3") {
      Invoke("delayWelcom", 0.2f);

    } else if (webmName == "startSelect") {
      //Invoke("delayStartSelect", 0.01f);

    } else if (webmName == "PreparePlay") {
      Invoke("delayPreparePlay", 0.2f);

    } else if (webmName == "ResPlay") {
      Invoke("delayResPlay", 0.01f);

    } else if (webmName == "ResEnded") {
      Invoke("delayResEnd", 0.01f);
    }


    videoPlayer.Play();
  }


  void EndReached(VideoPlayer vPlayer) {
    if (indexScene == 0) {
      AudioPlay();
    }

    if (indexScene == 1) {
      if (mainObj) {
        mainObj.GetComponent<MainScript>().lockBtn(true);
      }
      
    }

    if (indexScene == 2) {
      mainObj.GetComponent<GameScript>().gameStart(true);
    }

  }


}
