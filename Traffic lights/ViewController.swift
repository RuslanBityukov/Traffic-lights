//
//  ViewController.swift
//  Traffic lights
//
//  Created by Руслан Битюков on 20.10.2021.
//

import UIKit

enum Color {
    case red
    case yellow
    case green
}

class ViewController: UIViewController {
    
    @IBOutlet weak var redColorLabel: UIView! {
        didSet {
            redColorLabel.layer.cornerRadius = redColorLabel.frame.height / 2
        }
    }
    
    @IBOutlet weak var yellowColorLabel: UIView! {
        didSet {
            yellowColorLabel.layer.cornerRadius = yellowColorLabel.frame.height / 2
        }
    }
    
    @IBOutlet weak var greenColorLabel: UIView! {
        didSet {
            greenColorLabel.layer.cornerRadius = greenColorLabel.frame.height / 2
        }
    }
    
    @IBOutlet weak var settingVisualButton: UIButton! {
        didSet {
            settingVisualButton.layer.cornerRadius = 10
        }
    }
    
    
    private var settingColor: Color = .red
    private let colorOff: CGFloat = 0.3
    private let colorOn: CGFloat = 1
    
    
    @IBAction func buttonPressed() {
        
        settingVisualButton.setTitle("Next", for: .normal)
        
        switch settingColor {
        case .red:
            greenColorLabel.alpha = colorOff
            redColorLabel.alpha = colorOn
            settingColor = .yellow
            
        case .yellow:
            redColorLabel.alpha = colorOff
            yellowColorLabel.alpha = colorOn
            settingColor = .green
            
        case .green:
            yellowColorLabel.alpha = colorOff
            greenColorLabel.alpha = colorOn
            settingColor = .red
        }
    }
}

