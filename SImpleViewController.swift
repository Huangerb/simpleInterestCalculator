//
//  SImpleViewController.swift
//  Interest Calculator
//
//  Created by Bradley Yu on 7/2/17.
//  Copyright © 2017 Bradley Yu. All rights reserved.
//

import UIKit

class SImpleViewController: UIViewController {
    @IBOutlet weak var principle: UITextField!
    @IBOutlet weak var annualRate: UITextField!
    @IBOutlet weak var years: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func calculateInterest(_ sender: Any) {
        let principleInt: Double? = Double(principle.text!)
        let annualRateInt: Double? = Double(annualRate.text!)
        let yearsInt: Double? = Double(years.text!)
        let totalInterest: Double? = principleInt! * annualRateInt! * yearsInt!
        
        
        print(totalInterest ?? 0 )
    }




}
