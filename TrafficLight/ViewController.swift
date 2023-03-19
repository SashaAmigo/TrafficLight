//
//  ViewController.swift
//  TrafficLight
//
//  Created by Саша Amigo on 17.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.layer.cornerRadius = 50
        yellowLightView.layer.cornerRadius = 50
        greenLightView.layer.cornerRadius = 50
        startButton.layer.cornerRadius = 10
        
    }
    
    @IBAction func startButton(_ sender: UIButton) {
        sender.setTitle("NEXT", for: .normal)
        
        if redLightView.alpha != 1 , yellowLightView.alpha != 1 || greenLightView.alpha == 1 {
            redLightView.alpha = 1
            greenLightView.alpha = 0.2
        } else if redLightView.alpha == 1 {
            yellowLightView.alpha = 1
            redLightView.alpha = 0.2
        } else if greenLightView.alpha != 1 {
            greenLightView.alpha = 1
            redLightView.alpha = 0.2
            yellowLightView.alpha = 0.2
        }
    }
}


