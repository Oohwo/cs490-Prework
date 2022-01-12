//
//  ViewController.swift
//  Prework
//
//  Created by Rachel Sacdalan on 1/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // grabs bill amt from text field
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // 'total tip' = tip * tipPercentages
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // update tip amt label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        // update total amount label
        totalLabel.text = String(format: "$%.2f", total)
    }

}

