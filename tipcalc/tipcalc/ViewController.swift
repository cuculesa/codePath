//
//  ViewController.swift
//  tipcalc
//
//  Created by Ana Cuculescu on 9/15/20.
//  Copyright © 2020 Ana Cuculescu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calcTip(_ sender: Any) {
        //get bill
        let bill = Double(billField.text!) ?? 0
        
        //calc tip
        let perc = [0.15, 0.2, 0.3]
        let tip = bill * perc[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //update labels
        tipLabel.text = String(format:"$%.2f", tip)
        totalLabel.text = String(format:"$%.2f", total)
    }
}

