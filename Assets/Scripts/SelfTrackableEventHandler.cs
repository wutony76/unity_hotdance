using System.Collections;
using System.Collections.Generic;

using UnityEngine;
using Vuforia;



public class SelfTrackableEventHandler : MonoBehaviour, ITrackableEventHandler {



  public GameObject obj;
  bool selfCheck = true;

  #region PROTECTED_MEMBER_VARIABLES

  protected TrackableBehaviour mTrackableBehaviour;

  #endregion // PROTECTED_MEMBER_VARIABLES

  #region UNITY_MONOBEHAVIOUR_METHODS

  protected virtual void Start(){
    mTrackableBehaviour = GetComponent<TrackableBehaviour>();
    if (mTrackableBehaviour)
      mTrackableBehaviour.RegisterTrackableEventHandler(this);
  }

  protected virtual void OnDestroy(){
    if (mTrackableBehaviour)
      mTrackableBehaviour.UnregisterTrackableEventHandler(this);
  }

  #endregion // UNITY_MONOBEHAVIOUR_METHODS

  #region PUBLIC_METHODS

  /// <summary>
  ///     Implementation of the ITrackableEventHandler function called when the
  ///     tracking state changes.
  /// </summary>
  public void OnTrackableStateChanged(
      TrackableBehaviour.Status previousStatus,
      TrackableBehaviour.Status newStatus)
  {
    if (newStatus == TrackableBehaviour.Status.DETECTED ||
        newStatus == TrackableBehaviour.Status.TRACKED ||
        newStatus == TrackableBehaviour.Status.EXTENDED_TRACKED)
    {
      Debug.Log("Trackable " + mTrackableBehaviour.TrackableName + " found");
      OnTrackingFound();
    }
    else if (previousStatus == TrackableBehaviour.Status.TRACKED &&
             newStatus == TrackableBehaviour.Status.NOT_FOUND)
    {
      Debug.Log("Trackable " + mTrackableBehaviour.TrackableName + " lost");
      OnTrackingLost();
    }
    else
    {
      // For combo of previousStatus=UNKNOWN + newStatus=UNKNOWN|NOT_FOUND
      // Vuforia is starting, but tracking has not been lost or found yet
      // Call OnTrackingLost() to hide the augmentations
      OnTrackingLost();
    }
  }

  #endregion // PUBLIC_METHODS

  #region PROTECTED_METHODS

  protected virtual void OnTrackingFound()
  {
    var rendererComponents = GetComponentsInChildren<Renderer>(true);
    var colliderComponents = GetComponentsInChildren<Collider>(true);
    var canvasComponents = GetComponentsInChildren<Canvas>(true);

    // Enable rendering:
    foreach (var component in rendererComponents) {
      component.enabled = true;
    }


    if  (selfCheck ) {
      selfCheck = false;

      var videoObj = obj.GetComponent<VideoPlayerMgr>();
      if (videoObj){
        videoObj.AudioPlay();
		videoObj.SexyStart();
        //obj.GetComponent<AudioSourceMgr>().changePath();

        if (!selfCheck) {
          Invoke("isCheckSec", 1.5f );
        }

      }
    }

    
      //print(" VideoPlayerMgr = " + obj.GetComponent<VideoPlayerMgr>()  );

    // Enable colliders:
    foreach (var component in colliderComponents)
      component.enabled = true;

    // Enable canvas':
    foreach (var component in canvasComponents)
      component.enabled = true;
  }


  protected virtual void OnTrackingLost()
  {
    var rendererComponents = GetComponentsInChildren<Renderer>(true);
    var colliderComponents = GetComponentsInChildren<Collider>(true);
    var canvasComponents = GetComponentsInChildren<Canvas>(true);

    // Disable rendering:
    foreach (var component in rendererComponents)
      component.enabled = false;

      var videoObj = obj.GetComponent<VideoPlayerMgr>();
		if (videoObj) {
			videoObj.AudioStop();	
			videoObj.SexyStop();
			//videoObj.sexyState = videoObj.PLAYERSTOP;
		} 

    // Disable colliders:
    foreach (var component in colliderComponents)
      component.enabled = false;

    // Disable canvas':
    foreach (var component in canvasComponents)
      component.enabled = false;
  }

  #endregion // PROTECTED_METHODS

  void isCheckSec() {
    selfCheck = true;
  }


}
