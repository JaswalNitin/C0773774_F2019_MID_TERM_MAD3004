//
//  BillClass.swift
//  C0773774_F2019_MID_TERM_MAD3004
//
//  Created by Apple on 19/10/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation

/// This is a bill main class
class NJBillClass {

    // MARK: - Properties
    /// this is the id of bill
    var id = Int()
    /// this is date of bill
    var date = String()
    /// this is the type of bill
    var type = String()
    /// this is the amount of bill
    var amount = Float()
    /// this is used to save the final ammount
    var finalAmount = String()
    
    /// this is to concat "$"
    var calFinalAmount: String {
        get {
            let result = String(format: "$%.2f", amount)
            return result
        }
        set{
            finalAmount = newValue
        }
    }

}
