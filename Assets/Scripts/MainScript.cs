using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

using UnityEngine.UI;
using UnityEngine.SceneManagement;


public class MainScript : MonoBehaviour {


  public GameObject videoPlayerObj;

  public GameObject hiBtn;
  public GameObject keepBtn;
  public GameObject byeBtn;

  public GameObject initBtn;


  private int sceneIndex;





  // Use this for initialization
  void Start() {

    sceneIndex = SceneManager.GetActiveScene().buildIndex;

    if (hiBtn && keepBtn && byeBtn) {
      hiBtn.GetComponent<Button>().onClick.AddListener(delegate () { this.clicked(0); });
      keepBtn.GetComponent<Button>().onClick.AddListener(delegate () { this.clicked(1); });
      byeBtn.GetComponent<Button>().onClick.AddListener(delegate () { this.clicked(2); });
    }

    if (initBtn) {
      initBtn.GetComponent<Button>().onClick.AddListener(delegate () { this.clicked(3); });
    }

    lockBtn(false);

  }


  int _index;
  bool isClick = false;

  public void clicked(int index) {

    try
    {
      print("index  = " + index);
      if (!isClick)
      {
        isClick = true;
        _index = index;
        Invoke("delayClick", 0.2f);
      }


    }
    catch {
     
    }

    
  }

  void delayClick() {
    Resources.UnloadUnusedAssets();
    GC.Collect();

    PlayAssignSample(_index);
    lockBtn(false);
    isClick = false;
  }



public void lockBtn( bool boolean ) {

    if (hiBtn) hiBtn.SetActive(boolean);
    if (keepBtn) keepBtn.SetActive(boolean);
    if (byeBtn) byeBtn.SetActive(boolean);
    if (initBtn) initBtn.SetActive(boolean);
  }

  /*
  void start() {
    print("ｃｌｉｃｋ　ｃｈａｎｇ　Ｓｃｅｎｅ = " + gameObject.name);
    //videoPlayerObj.GetComponent<VideoPlayerMgr>().mainObj = gameObject;
  } */

  public void ChangeScene() {
    print("ｃｌｉｃｋ　ｃｈａｎｇ　Ｓｃｅｎｅ = " + gameObject.name);

    if (sceneIndex == 0) {

      //SceneManager.LoadScene(1);
      LoadNewScene("Scene2");

      //Application.LoadLevel(1);
    }

    if (sceneIndex == 1) {
      //SceneManager.LoadScene(2);
      LoadNewScene("Scene3");
      //Application.LoadLevel(2);
    }

    if (sceneIndex == 2){
      SceneManager.LoadScene("Main");
      //LoadNewScene("Main");
      //Application.LoadLevel("Main");
    }

  }


  public void ClearLogo(){
    print("ClearLogo ");
    Invoke("delayClearLogo", 0.2f);
  }


  void delayClearLogo() {


    try
    {
      Resources.UnloadUnusedAssets();
      GC.Collect();


      var videoObj = videoPlayerObj.GetComponent<VideoPlayerMgr>();
      if (videoObj)
      {
        videoObj.ChangeAudio();
      }


    }
    catch { }

    

  }




    public void PlayOriSample() {



      Invoke("delayPlayOriSample", 0.2f );
    }

  void delayPlayOriSample() {
    try
    {
      Resources.UnloadUnusedAssets();
      GC.Collect();


      var videoObj = videoPlayerObj.GetComponent<VideoPlayerMgr>();
      if (videoObj)
      {
        videoObj.PlayOriSample();
      }


    }
    catch {
    }
   
  }





  public void PlayAssignSample( int index ){
    var videoObj = videoPlayerObj.GetComponent<VideoPlayerMgr>();
    if (videoObj){
      videoObj.AssignPlay(index );
    }
  }


  public void LoadNewScene( string sceneName) {
    //Globe.nextSceneName = "Scene";
    Globe.nextSceneName = sceneName;
    SceneManager.LoadScene("ClearScene");
  }


}


