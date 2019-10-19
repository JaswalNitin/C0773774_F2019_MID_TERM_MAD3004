//
//  CustomerClass.swift
//  C0773774_F2019_MID_TERM_MAD3004
//
//  Created by Apple on 19/10/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation

class CustomerClass: IPrintPC {
    
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
    
    // MARK: - Life Cycle
    /// this is used to initialize all the properties of the customer class
    init(cust_id: Int, first_name: String, last_name: String, cust_email: String, total_bill_Amnt: Float, bill_dict: [String : AnyObject]) {
        self.id = cust_id
        self.firstName = first_name
        self.lastName = last_name
        self.email = cust_email
        self.totalBillAmount = total_bill_Amnt
        self.billDict = bill_dict
    }
    
    // MARK: - Functions
    /// this is used to display data of the class
    func displayData() {
        
        self.fullName = calFull
        print("Customer Id: ", self.id)
        print("Customer Full Name: ", self.fullName)
        print("Customer Email ID: ", self.email)
        
        let str = """
                            ---- Bill Information ----
                  """
        print(str)
        
        var total = Float()
        for (key, value) in self.billDict {
            
            switch key {
            case "internet":
                // calling display for Internet class
                (value as! InternetClass).displayData()
                
                // adding value to sumup total bill
                total += (value as! InternetClass).amount
            case "mobile":
                // calling display for Internet class
                (value as! MobileClass).displayData()
                
                // adding value to sumup total bill
                total += (value as! MobileClass).amount
            default:
                print("hydro")
                //(value as! NJHydroClass).displayData()
            }
            
        }
        
        print("******************************************")
        let totalBillToPay = String(format: "        Total Bill Amount to Pay :$%.2f", total)
        print(totalBillToPay)
        print("******************************************")
        
        
    }
}
