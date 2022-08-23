using System;
using System.Collections;
using System.Collections.Generic;
using System.Threading;
using UnityEngine;

using UnityEngine.UI;


public class GameScript : MonoBehaviour {

  static int win = 1;
  static int lost = 2;
  static int flat = 3;


  public GameObject videoPlayerObj;

  public GameObject shearsBtn;
  public GameObject stoneBtn;
  public GameObject clothBtn;

  public Text stateInfo;
  int playState = flat;

  // Use this for initialization
  void Start() {
    shearsBtn.GetComponent<Button>().onClick.AddListener(delegate () { this.clicked(0); });
    stoneBtn.GetComponent<Button>().onClick.AddListener(delegate () { this.clicked(1); });
    clothBtn.GetComponent<Button>().onClick.AddListener(delegate () { this.clicked(2); });

    gameStart(false);
    stateInfo.text = "prepare...";
  }



  public void gameStart(bool boolean) {
    shearsBtn.SetActive(boolean);
    stoneBtn.SetActive(boolean);
    clothBtn.SetActive(boolean);

    if (boolean) {
      //stateInfo.text = "start play...";
    }
  }




  Thread thread;

  int _resIndex;
  bool isClick = false;

  void clicked(int resIndex) {

    stateInfo.text = "開始遊戲...";

    if (!isClick) {
      isClick = true;
      _resIndex = resIndex;
      Invoke("delayClick", 0.2f);
    //thread = new Thread(delayClick);
    //thread.Start();
     }

  }


  void delayClick() {
    isClick = false;

    Resources.UnloadUnusedAssets();
    GC.Collect();
    gameStart(false);

    _avRes = UnityEngine.Random.Range(0, 3);
    startMatch(_resIndex);

  }




  int _avRes;

  string stateStr = "";
  void startMatch(int selfRes) {
    int avRes = _avRes;
    int resIndex = 0;
    

    switch (selfRes) {
      case 0:

        if (avRes == 1) {
          playState = lost;
          resIndex = 0;
        } else if (avRes == 2) {
          playState = win;
          resIndex = 1;
        } else {
          playState = flat;
          resIndex = 2;
        }




        break;

      case 1:

        if (avRes == 1) {
          playState = flat;
          resIndex = 3;
        }
        else if (avRes == 2) {
          playState = lost;
          resIndex = 4;
        }
        else {
          playState = win;
          resIndex = 5;
        }

        break;

      case 2:

        if (avRes == 1) {
          playState = win;
          resIndex = 6;
        }
        else if (avRes == 2) {
          playState = flat;
          resIndex = 7;
        }
        else {
          playState = lost;
          resIndex = 8;
        }

        break;


    }
    stateStr = " 您出了 " + stateToStr(selfRes) + " , " + " 女孩出了 " + stateToStr(avRes) + " , ";
    //gameEnd( playState );

    var videoObj = videoPlayerObj.GetComponent<VideoPlayerMgr>();
    if (videoObj) {
      videoObj.PreparePlay(resIndex, playState);
    }
  }


  void gameEnd(int resIndex) {
    gameStart(false);

    var videoObj = videoPlayerObj.GetComponent<VideoPlayerMgr>();
    if (videoObj) {

      videoObj.AssignPlay(resIndex);
    }
  }



  //update label ----
  string stateToStr(int state) {
    string stateStr = "";

    switch (state) {

      case 0:
        stateStr = "剪刀";
        break;

      case 1:
        stateStr = "石頭";
        break;

      case 2:
        stateStr = "布";
        break;
    }

    return stateStr;

  }


  public void updateGameRes(int playState) {
    switch (playState) {

      case 1:
        stateInfo.text = stateStr + " 您贏了 ";
        break;

      case 2:
        stateInfo.text = stateStr + " 您輸了 ";
        break;

      case 3:
        stateInfo.text = stateStr + " 平手喔 ";
        break;
    }
  }

  //update updateInfo
  public void updateInfo( string infoData ) {

    print(" updateInfo =  " + infoData);
    stateInfo.text = infoData;
    print(" updateInfo =  " + stateInfo.text );
    
  }





  void Update(){
    //print(" sssssssssssssssssssss =  " + stateInfo.text);
  }


}
