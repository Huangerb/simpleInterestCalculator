//
//  SImpleSecondViewController.swift
//  Interest Calculator
//
//  Created by Bradley Yu on 7/2/17.
//  Copyright © 2017 Bradley Yu. All rights reserved.
//

import UIKit

class SImpleSecondViewController: UIViewController {
    @IBOutlet weak var answerDisplayed: UILabel!
    @IBOutlet weak var totalDisplayed: UILabel!
    
    var totalInterestDisplayed: Double!
    var answerInterest: String!
    var totalMoneyDisplayed: Double!
    var answerMoney: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        answerInterest = String(format: "%.2f", totalInterestDisplayed)
        answerDisplayed.text = "The interest you will be: $" + answerInterest
        answerMoney = String(format: "%.2f", totalMoneyDisplayed)
        totalDisplayed.text = "The total will be: $" + answerMoney
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
   
    

}
