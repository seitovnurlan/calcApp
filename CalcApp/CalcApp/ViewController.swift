//
//  ViewController.swift
//  CalcApp
//
//  Created by Nurlan Seitov on 6/2/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayResultLabel: UILabel!
    var stillTyping = false
    var firstOperand: Double = 0
    var secondOperand: Double = 0
    var operationSign: String = ""
    
    var currentInput: Double {
        get {
            return Double(displayResultLabel.text!)!
        }
        set{
            displayResultLabel.text = "\(newValue)"
            stillTyping = false
        }
    }
    
    
    @IBAction func namberPressed(_ sender: UIButton) {
        
        let number = sender.currentTitle!
        
        if stillTyping {
            if let text = displayResultLabel.text,text.count < 20 {
        displayResultLabel.text = displayResultLabel.text! + number
            }
        } else {
            displayResultLabel.text = number
            stillTyping = true
        }
    }
    
    @IBAction func twoOperandsSingPressed(_ sender: UIButton) {
        operationSign = sender.currentTitle!
        firstOperand = currentInput
        print(operationSign)
        stillTyping = false
    }
    
}

