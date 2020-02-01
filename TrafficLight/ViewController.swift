//
//  ViewController.swift
//  TrafficLight
//
//  Created by Valeria Khristinina on 29/01/2020.
//  Copyright © 2020 Valeria Khristinina. All rights reserved.
//

import UIKit

enum CurrentLight {
	case red
	case yellow
	case green
	case none
}

class ViewController: UIViewController {
	
	@IBOutlet var firstLightView: UIView!
	@IBOutlet var secondLightView: UIView!
	@IBOutlet var thirdLightView: UIView!
	@IBOutlet var switchButton: UIButton!
	
	private var currentLight = CurrentLight.none
	
	private let lightOpacity: CGFloat = 0.3
	private let fullLightOpacity: CGFloat = 1
	
	override func viewDidLoad() {
		super.viewDidLoad()
		firstLightView.backgroundColor = UIColor.red
		firstLightView.alpha = lightOpacity
		secondLightView.backgroundColor = UIColor.yellow
		secondLightView.alpha = lightOpacity
		thirdLightView.backgroundColor = UIColor.green
		thirdLightView.alpha = lightOpacity
	}
	
	// If demensions Lights (UIView) depends of screen-size, we need to use method viewDidLayoutSubviews(), because method viewDidLoad() dont know about screen-size, this method tooks size that i use in main.storyboards
	override func viewDidLayoutSubviews() {
		firstLightView.layer.cornerRadius = firstLightView.frame.width / 2
		secondLightView.layer.cornerRadius = secondLightView.frame.width / 2
		thirdLightView.layer.cornerRadius = thirdLightView.frame.width / 2
	}
	
	@IBAction func changeColorButton() {
		switchButton.setTitle("Next", for: .normal)
		
		switch currentLight {
		case .none:
			currentLight = .red
			firstLightView.alpha = fullLightOpacity
		case .red:
			currentLight = .yellow
			secondLightView.alpha = fullLightOpacity
			firstLightView.alpha = lightOpacity
		case .yellow:
			currentLight = .green
			thirdLightView.alpha = fullLightOpacity
			secondLightView.alpha = lightOpacity
		case .green:
			currentLight = .red
			firstLightView.alpha = fullLightOpacity
			thirdLightView.alpha = lightOpacity
			
		}
	}
	
	
}
