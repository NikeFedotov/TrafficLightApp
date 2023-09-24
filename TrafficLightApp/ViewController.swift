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

final class ViewController: UIViewController {

    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!

    @IBOutlet weak var actionButton: UIButton!
    
    private var currentLight = CurrentLight.red
    private var lightIsOff: CGFloat = 0.3
    private var lightIsOn: CGFloat = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.alpha = lightIsOff
        yellowLight.alpha = lightIsOff
        greenLight.alpha = lightIsOff
        
        actionButton.layer.cornerRadius = 10
    }
    
    override func viewWillLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = redLight.frame.width / 2
        greenLight.layer.cornerRadius = redLight.frame.width / 2
        
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

