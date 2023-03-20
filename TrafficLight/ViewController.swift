//
//  ViewController.swift
//  TrafficLight
//
//  Created by Саша Amigo on 17.03.2023.
//

import UIKit

enum currentLight {
    case red
    case yellow
    case green
}

class ViewController: UIViewController {
    
    private var current = currentLight.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.2
    
    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
        startButton.layer.cornerRadius = 10
    }
    
    @IBAction func startButton(_ sender: UIButton) {
        if startButton.currentTitle == "START" {
            sender.setTitle("NEXT", for: .normal)
        }
        
        switch current {
        case .red:
            redLightView.alpha = lightIsOn
            greenLightView.alpha = lightIsOff
            current = .yellow
        case .yellow:
            redLightView.alpha = lightIsOff
            yellowLightView.alpha = lightIsOn
            current = .green
        case .green:
            yellowLightView.alpha = lightIsOff
            greenLightView.alpha = lightIsOn
            current = .red
        }
    }
}


