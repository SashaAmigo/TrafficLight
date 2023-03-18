//
//  ViewController.swift
//  TrafficLight
//
//  Created by Саша Amigo on 17.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var greenLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        greenLightView.layer.cornerRadius = 50
        yellowLightView.layer.cornerRadius = 50
        redLightView.layer.cornerRadius = 50
        startButton.layer.cornerRadius = 10
    }
    
    @IBAction func startButton(_ sender: UIButton) {
        greenLightView.alpha = 1
        sender.setTitle("CONTINUE", for: .normal)
        
    }
    
}
	
