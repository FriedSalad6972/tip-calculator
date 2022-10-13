//
//  ViewController.swift
//  Jun's project
//
//  Created by Brandon Pyo on 10/3/22.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var totalAmount: UILabel!
    @IBOutlet weak var tipPercent: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    
    @IBAction func Calculatetip(_ sender: Any) {
        // get bill amount from text field input
        let bill = Double(billAmount.text!) ?? 0
        
        // Get Total tip by multiplying tip * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipPercent.selectedSegmentIndex]
        let total = bill + tip
        
        // Update Tip Amount Label
        tipAmount.text = String(format: "$%.2f", tip)
        // Update Total Amount
        totalAmount.text = String(format: "$%.2f",  total)
        
        
        
    }
    
}

