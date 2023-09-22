//
//  ViewController.swift
//  TrafficLightApp
//
//  Created by Никита on 23.09.2023.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}

class ViewController: UIViewController {

    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!

    @IBOutlet weak var actionButton: UIButton!
    
    private var currentLight = CurrentLight.red
    private var lightIsOff: CGFloat = 0.3
    private var lightIsOn: CGFloat = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.layer.cornerRadius = 75
        redLight.alpha = lightIsOff
        yellowLight.layer.cornerRadius = 75
        yellowLight.alpha = lightIsOff
        greenLight.layer.cornerRadius = 75
        greenLight.alpha = lightIsOff
        actionButton.layer.cornerRadius = 10
    }

    @IBAction func pressButton(_ sender: UIButton) {
        actionButton.setTitle("Next", for: .normal)
        
        switch currentLight {
        case .red:
            redLight.alpha = lightIsOn
            yellowLight.alpha = lightIsOff
            greenLight.alpha = lightIsOff
            currentLight = .yellow
        case .yellow:
            redLight.alpha = lightIsOff
            yellowLight.alpha = lightIsOn
            greenLight.alpha = lightIsOff
            currentLight = .green
        case .green:
            redLight.alpha = lightIsOff
            yellowLight.alpha = lightIsOff
            greenLight.alpha = lightIsOn
            currentLight = .red
        }
    }
    
}

