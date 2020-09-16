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
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calcTip(_ sender: Any) {
        //get bill
        
        //calc tip
        
        //update labels
        tipLabel.text = "100"
        totalLabel.text = "10"
    }
}

