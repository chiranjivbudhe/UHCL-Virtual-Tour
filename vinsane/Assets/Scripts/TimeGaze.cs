using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class TimeGaze : MonoBehaviour, IPointerEnterHandler, IPointerExitHandler{

	Button button;
	bool isEntered;
	float timeElapsed = 0f;
	float gazeActivationTime = 3f;
	// Use this for initialization
	void Start () {
		button = GetComponent<Button> ();
	}
	
	// Update is called once per frame
	void Update () {
		if (isEntered) {
			timeElapsed += Time.deltaTime;
			if (timeElapsed >= gazeActivationTime) {
				button.onClick.Invoke ();
				timeElapsed = 0f;
				isEntered = false;
			}
		}
	}

	public void OnPointerEnter(PointerEventData eventdata){
		isEntered = true;
	}

	public void OnPointerExit(PointerEventData eventData) {
		isEntered = false;
		timeElapsed = 0f;
	}
}
