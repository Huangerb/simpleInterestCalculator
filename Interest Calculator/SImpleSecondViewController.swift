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
    var totalInterestDisplayed: Double!
    var answerInterest: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        answerInterest = String(totalInterestDisplayed)
        
        answerDisplayed.text = "The interest you will pay will be: $" + answerInterest
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
   
    

}
