//
//  CustomerClass.swift
//  C0773774_F2019_MID_TERM_MAD3004
//
//  Created by Apple on 19/10/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation

class CustomerClass {
    
    // MARK: - Properties
    /// this is the customer id
    var id = Int()
    /// this the first name
    var firstName = String()
    /// this is the last name
    var lastName = String()
    
    var fullName = String()
    /// this is used to concat fisrt name and last name
    var calFull: String {
        get {
            return firstName + " " + lastName
        }
        set{
            fullName = newValue
        }
    }
    
    /// this is used to store email
    var email = String()
    
    /// this is used to store total bill amount of all bills
    var totalBillAmount = Float()
    /// this is used to concat the "$" with the totalBillAmount
    var strTotalBillAmount: String{
        get {
            let strResult = String(format:  "$%.2f", totalBillAmount)
            return strResult
        }
    }
    
    /// this is the dictionary for all class of objects of all type of the bills.
    var billDict: [String : AnyObject]
}
