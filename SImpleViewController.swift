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
    var totalInterestFinal: Double!


    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func calculateInterest(_ sender: Any) {
        if (principle.text?.isEmpty)! || (annualRate.text?.isEmpty)! || (years.text?.isEmpty)!
        {
            displayEmptyMessage(message: "You must fill in all of the boxes")
        }
        else{
            let principleInt: Double? = Double(principle.text!)
            let annualRateInt: Double? = Double(annualRate.text!)
            let yearsInt: Double? = Double(years.text!)
            let totalInterest: Double? = principleInt! * (annualRateInt! / 100) * yearsInt!
            
            print(totalInterest ?? 0 )
            totalInterestFinal = totalInterest
        }
    }

    func displayEmptyMessage(message: String)
    {
        let alert = UIAlertController(title: "Error", message: "You must fill in all of the boxes", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Go back", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let dvc = segue.destination as! SImpleSecondViewController
        dvc.totalInterestDisplayed = totalInterestFinal
        
    }




}
