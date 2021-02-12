//
//  ViewController.swift
//  CalcApp
//
//  Created by Nurlan Seitov on 6/2/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayResultLabel: UILabel!
    var stilltyping = false
    
    @IBAction func namberPressed(_ sender: UIButton) {
        
        let number = sender.currentTitle!
        
        if stilltyping {
            if let text = displayResultLabel.text,text.count < 20 {
        displayResultLabel.text = displayResultLabel.text! + number
            }
        } else {
            displayResultLabel.text = number
            stilltyping = true
        }
    }
    

}

