using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Video;

public class controller : MonoBehaviour {

    public GameObject[] PointsOfInterest;
	public GameObject camera;
    public int startingPoint = 0;
    public Text continueText;
    public RawImage rawImage;

    public ParticleEffectController peControllerScript;
    public ParticleSystem _portalParticleSystem;
    //public ParticleSystem _warpParticleSystem;
    private int currentPoint;

	// Use this for initialization
	void Start () {
        currentPoint = startingPoint;
    }
	
	// Update is called once per frame
	void Update () {
        if (!PointsOfInterest[currentPoint].GetComponent<VideoPlayer>().isPlaying && !_portalParticleSystem.IsAlive())
        {
            //PointsOfInterest [currentPoint].transform.GetChild (0).GetChild (0).gameObject.SetActive(true);
            peControllerScript.ActParticleSystem( _portalParticleSystem); // activate portal particle system
        }
    }

	public void GoToNextPointofInterest(){
		if (!PointsOfInterest[currentPoint].GetComponent<VideoPlayer>().isPlaying)
		{ 
				if (currentPoint == (PointsOfInterest.Length - 1))
				{
					currentPoint = startingPoint;
					continueText.enabled = true;
					rawImage.enabled = false;
                }
                else
				    {
				    PointsOfInterest [currentPoint].transform.GetChild (0).GetChild (0).gameObject.SetActive(false);
					currentPoint++;
					RenderTexture renderTexture = new RenderTexture(256,256,24);
					continueText.enabled = false;
					rawImage.enabled = true;
					PointsOfInterest[currentPoint].GetComponent<VideoPlayer>().targetTexture = renderTexture;
					rawImage.texture = renderTexture;
                    peControllerScript.De_ActParticleSystem(_portalParticleSystem); // deactivate portal particle system

                }

                camera.transform.position = PointsOfInterest[currentPoint].transform.position;
				PointsOfInterest[currentPoint].GetComponent<VideoPlayer>().Play();
			}
	 }

}
