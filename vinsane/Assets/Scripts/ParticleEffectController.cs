using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

public class ParticleEffectController : MonoBehaviour
{
    bool expand;
    float portalMaxScale = 1.0f;
    float portalMinScale = .4f;
    float warpScale = 6f;

    public float speed = 5.0f, warpSpeed = 2.5f;
    public float portalTimePassed = 0f;
    public float warpTimePassed = 0f;
    ParticleSystem _portalParticleSystem, _warpParticleSystem;
    controller controllerScript;

    // Use this for initialization33
    void Start () {
        _portalParticleSystem = GameObject.FindGameObjectWithTag("PS_Portal").GetComponent<ParticleSystem>();
        _portalParticleSystem.transform.localScale = new Vector3(portalMinScale, portalMinScale, portalMinScale);

        _warpParticleSystem = GameObject.FindGameObjectWithTag("PS_Warp").GetComponent<ParticleSystem>();
        controllerScript = GameObject.FindGameObjectWithTag("GameController").GetComponent<controller>();

    }

    // Update is called once per frame
    void Update () {

        //PEControllerScript.ResizeParticleSystem(_portalParticleSystem, lerpFrom, lerpTo, speed); // zoom-in effect for portal 
        if (expand && _portalParticleSystem.IsAlive())
        {
            if (_portalParticleSystem.transform.localScale.x < portalMaxScale)
            {
                //expand portal while being gazed upon
                portalTimePassed += Time.deltaTime;
                ResizeParticleSystem(new Vector3(portalMinScale, portalMinScale, portalMinScale), new Vector3(portalMaxScale, portalMaxScale, portalMaxScale), speed, portalTimePassed);
            }
            //Weve Hit Warp Size
            else if (_portalParticleSystem.transform.localScale.x >= portalMaxScale && _portalParticleSystem.transform.localScale.x < warpScale)
            {
                //Resize to warp scale
                warpTimePassed += Time.deltaTime;
                ResizeParticleSystem(new Vector3(portalMaxScale, portalMaxScale, portalMaxScale), new Vector3(warpScale, warpScale, warpScale), warpSpeed, warpTimePassed);
                if (!_warpParticleSystem.isPlaying) {
                    ActParticleSystem(_warpParticleSystem);
                }
            }
            else if (_portalParticleSystem.transform.localScale.x >= warpScale)
            {
                /* go to the next point of interest
                *   stp the warp effect
                *   rescale portal to min scale
                */
                portalTimePassed = 0;
                warpTimePassed = 0;
                controllerScript.GoToNextPointofInterest();
                StopWarpEffect();
                _portalParticleSystem.transform.localScale = new Vector3(portalMinScale, portalMinScale, portalMinScale);
            }
        }
        else
        {
            portalTimePassed -= Time.deltaTime;
            if (portalTimePassed < 0)
            {
                portalTimePassed = 0;
            }
            warpTimePassed = 0;
            ResizeParticleSystem(new Vector3(portalMinScale, portalMinScale, portalMinScale), new Vector3(portalMaxScale, portalMaxScale, portalMaxScale), speed, portalTimePassed);
        }
    }

    private void ResizeParticleSystem(Vector3 lerpFrom, Vector3 lerpTo, float speed, float timePassed)
    {
        _portalParticleSystem.transform.localScale = Vector3.Lerp(lerpFrom, lerpTo, (timePassed / speed));
    }

    public void ActParticleSystem( ParticleSystem particleSystemRef)
    {
        particleSystemRef.Play(true);
    }

    public void De_ActParticleSystem(ParticleSystem particleSystemRef)
    {
        particleSystemRef.Stop(true, ParticleSystemStopBehavior.StopEmittingAndClear);
    }

    public void OnPointerEnter(ParticleSystem particleSystemRef)
    {
        expand = true;
    }

    public void OnPointerExit(ParticleSystem particleSystemRef)
    {
        expand = false;
    }

    public void StopWarpEffect()
    {
        De_ActParticleSystem(_portalParticleSystem); // deactivate portal particle system
        De_ActParticleSystem(_warpParticleSystem); // deactivate portal particle system
    }
}
