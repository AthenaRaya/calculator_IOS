//
//  ViewController.swift
//  Calculator
//
//  Created by Athena Raya on 1/27/20.
//  Copyright © 2020 Athena Raya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var tipLabel: UILabel!
     @IBOutlet weak var totalLabel: UILabel!
     @IBOutlet weak var billAmount: UITextField!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

   
    
    @IBAction func onTap(_ sender: Any) {
        print("hello")
        view.endEditing(true)
    }
    @IBAction func calculateTips(_ sender: Any) {
        
        // Get the bill amount
        let bill = Double(billAmount.text!) ?? 0
        // Calculate the tip and total
        let tipPercentages = [0.15,0.18,0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update the tip and total labels
        tipLabel.text = String(format:"$%.2f" ,tip)
        totalLabel.text = String(format:"$%.2f" ,total)
    }
    
    
    
}

