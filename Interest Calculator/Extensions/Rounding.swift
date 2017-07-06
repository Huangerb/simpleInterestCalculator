//
//  Rounding.swift
//  Interest Calculator
//
//  Created by Bradley Yu on 7/2/17.
//  Copyright © 2017 Bradley Yu. All rights reserved.
//

import Foundation

extension Double {
    /// Rounds the double to decimal places value
    func roundTo(places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}
