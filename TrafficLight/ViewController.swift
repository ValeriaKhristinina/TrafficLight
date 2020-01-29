//
//  ViewController.swift
//  TrafficLight
//
//  Created by Valeria Khristinina on 29/01/2020.
//  Copyright © 2020 Valeria Khristinina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet var firstLightView: UIView!
  @IBOutlet var secondLightView: UIView!
  @IBOutlet var thirdLightView: UIView!
  @IBOutlet var switchButton: UIButton!
  
  let lightOpacity: CGFloat = 0.3
  let fullLightOpacity: CGFloat = 1
  let radiusOfLignt: CGFloat = 50
  
  override func viewDidLoad() {
    super.viewDidLoad()
    firstLightView.backgroundColor = UIColor.red
    firstLightView.alpha = lightOpacity
    firstLightView.layer.cornerRadius = radiusOfLignt
    secondLightView.backgroundColor = UIColor.yellow
    secondLightView.alpha = lightOpacity
    secondLightView.layer.cornerRadius = radiusOfLignt
    thirdLightView.backgroundColor = UIColor.green
    thirdLightView.alpha = lightOpacity
    thirdLightView.layer.cornerRadius = radiusOfLignt
  }

  @IBAction func changeColorButton() {
    switchButton.setTitle("Next", for: .normal)
    if (firstLightView.alpha != fullLightOpacity && secondLightView.alpha != fullLightOpacity || thirdLightView.alpha == fullLightOpacity) {
      firstLightView.alpha = fullLightOpacity
      thirdLightView.alpha = lightOpacity
    } else if (firstLightView.alpha == fullLightOpacity) {
      secondLightView.alpha = fullLightOpacity
      firstLightView.alpha = lightOpacity
    } else if (secondLightView.alpha == fullLightOpacity){
      secondLightView.alpha = lightOpacity
      thirdLightView.alpha = fullLightOpacity
    }
  }
  
  
}

