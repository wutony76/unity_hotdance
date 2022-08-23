using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

using System.Runtime.CompilerServices;
using Object = UnityEngine.Object;

using UnityEngine.SceneManagement;

public class Globe {
  public static string nextSceneName;

  // <summary>
  // 异步加载场景
  // </summary>
  // <param name="sceneName">场景名字<param>
  // <param name="sAsync">是否使用异步加载<param>
  public static void LodingScene(string sceneName, bool isAsync = true){

    //清理Unity垃圾
    //Resources.UnloadUnusedAssets();

    ////清理GC垃圾
    //GC.Collect();
    
    try
    {

      Object[] objAry = Resources.FindObjectsOfTypeAll<Material>();
      for (int i = 0; i < objAry.Length; ++i)
      {

        if (objAry[i]) objAry[i] = null;//解除资源的引用
      }

      Object[] objAry2 = Resources.FindObjectsOfTypeAll<Texture>();

      for (int i = 0; i < objAry2.Length; ++i)
      {
        if (objAry2[i]) objAry2[i] = null;
      }

      //卸载没有被引用的资源
      Resources.UnloadUnusedAssets();

      //立即进行垃圾回收
      GC.Collect();
      GC.WaitForPendingFinalizers();//挂起当前线程，直到处理终结器队列的线程清空该队列为止
      GC.Collect();
    }
    catch { }




    //是否使用异步加载
    if (isAsync){
      //赋值加载场景名称
      nextSceneName = sceneName;
      //跳转到LoadingScene场景
      SceneManager.LoadScene("ClearScene");
    }
    else{
      SceneManager.LoadScene(sceneName);
    }
  }


}





public class ClearSceneData : MonoBehaviour {



  private AsyncOperation operation;

  private int displayProgress;
  private int toProgress;


  void Start(){
    print( "cccccccccccccccccccccccccccccccccccccccccccccc  clear" );

    if (SceneManager.GetActiveScene().name == "ClearScene"){
      //启动协程  
      StartCoroutine(AsyncLoading());
    }

  }



  private IEnumerator AsyncLoading()
  {
    operation = SceneManager.LoadSceneAsync(Globe.nextSceneName);
    operation.allowSceneActivation = false;

    while (operation.progress < 0.9f){
      toProgress = (int)operation.progress * 100;
      while (displayProgress < toProgress){
        ++displayProgress;
        SetLoadingPercentage(displayProgress);
        yield return new WaitForEndOfFrame();
      }
    }

    toProgress = 100;
    while (displayProgress < toProgress) {
      ++displayProgress;
      SetLoadingPercentage(displayProgress);
      yield return new WaitForEndOfFrame();
    }
    operation.allowSceneActivation = true;
  }

  private void SetLoadingPercentage(int Percentage){
    print( "SetLoadingPercentage = " + Percentage);


    //loadingSlider.value = Percentage;
    //loadingText.text = Percentage + "%";
  }





  /*





  private AsyncOperation async;
  private static string nextSceneName;



	// Use this for initialization
	void Start () {


    print( "ccccccccccccccccccccccccccccccccccccccccccccccccc clear" );

    StartCoroutine("AsyncLoadScene", nextSceneName);

  }


  void Awake()
  {
    Object[] objAry = Resources.FindObjectsOfTypeAll<Material>();

    for (int i = 0; i < objAry.Length; ++i)
    {
      objAry[i] = null;//解除资源的引用
    }

    Object[] objAry2 = Resources.FindObjectsOfTypeAll<Texture>();

    for (int i = 0; i < objAry2.Length; ++i)
    {
      objAry2[i] = null;
    }

    //卸载没有被引用的资源
    Resources.UnloadUnusedAssets();

    //立即进行垃圾回收
    GC.Collect();
    GC.WaitForPendingFinalizers();//挂起当前线程，直到处理终结器队列的线程清空该队列为止
    GC.Collect();

  }


  public static void LoadLevel(string _nextSceneName){
    nextSceneName = _nextSceneName;
    Application.LoadLevel("ClearScene");
  }


  /// 异步加载下一个场景
  /// 
  /// 
  /// 
  IEnumerator AsyncLoadScene(string sceneName)
  {
    async = Application.LoadLevelAsync(sceneName);
    yield return async;
  }

  void OnDestroy()
  {
    async = null;
  }




  // Update is called once per frame
  void Update () {
		
	}

  */



}
