using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AudioSourceMgr : MonoBehaviour {


  private AudioSource audioSource;
  AudioClip old_audioClip;
  public AudioClip audioEffect;



	string audioState = "";
	bool isStop = false;



  // Use this for initialization
  void Start() {
    audioSource = GetComponent<AudioSource>();
    print("audioSource = " + audioSource);

    old_audioClip = audioSource.clip;

    audioSource.clip = audioEffect;


    print("changePath = " + audioSource.time);
    //audioSource
    audioSource.volume = 0.2f;
    audioSource.loop = true;
    //
    //audioSource.time = 10;
    audioSource.Play();
  }

  void delayChange() {
    
    //audioSource.Play();

  }



  public void changePath() {
    //print("changePath = " + audioSource.time);

    audioSource.Stop();
    audioSource.volume = 1f;
    audioSource.loop = false;
    //audioSource.time;
    audioSource.clip = null;

	//audioSource.clip = audioEffect;
	//audioSource.time = 5;
	audioSource.Play();

  }

  public void audioStop(){
	audioSource.Stop ();
  }


	public void assignPlay(int _time){


		if( _time == 55 ){
			audioState = "prepare";
		}

		audioSource.Stop ();

		audioSource.time = _time;
		audioSource.Play();
	}



  public void audioPlay(){
    if (old_audioClip) {
      audioSource.clip = old_audioClip;
      audioSource.volume = 0.2f;
      audioSource.loop = true;
      if(audioSource) audioSource.Play();
    }
  }

	public void playBmg(){
	
		audioSource.Stop();
		audioSource.volume = 0.5f;
		audioSource.loop = true;
		//audioSource.time;
		//audioSource.clip = null;

		audioSource.clip = old_audioClip;
		//audioSource.time = 5;
		audioSource.Play();

	}



  // Update is called once per frame
  void Update () {
		
		if( audioState == "prepare" ){

			//print( "audioSource prepare= " + audioSource.time);
			if(audioSource.time >= 65 ) isStop = true;
			if(isStop){
				audioSource.Stop ();
				//assignPlay (55);
			}
		}




	}
}
