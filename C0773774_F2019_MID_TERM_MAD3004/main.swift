//
//  main.swift
//  C0773774_F2019_MID_TERM_MAD3004
//
//  Created by Apple on 19/10/19.
//  Copyright © 2019 Apple. All rights reserved.
//  Created By Nitin Jaswal

import Foundation


// MARK: - Functions
enum MyError: Error {
    case runtimeError(String)
}
/// this checks if email valid or not
func isValidEmail(emailStr:String) throws -> Bool {
    let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    
    let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
    let result = emailPred.evaluate(with: emailStr)
    if(result == true){ }else{
        throw MyError.runtimeError("Invalid email")
    }
    
    return result
}

/// this checks if email valid or not
func isValidPhone(phoneNo:String) -> Bool {
  
    if(phoneNo.count == 10){
        
        return true
    }else{
        return false
    }

}


// MARK: - Entering Data
// 1. enterning value of customer1 with 2 types of bill.
var internet1 = InternetClass(billId: "Inter001", billDate: "Thursday, 24 January, 2019", billAmount: 336.00, billType: "Internet", companyName: "Bell", dataUsed: 10)
// checking if phoneNo valid or not
var phone1 = "231-453-6643"
if(isValidPhone(phoneNo: phone1) ){}else{
    phone1 = "Invalid email"
}
var mobile1 = MobileClass(billId: "Mobile001", billDate: "Friday, 25 January, 2019", billAmount: 321.70, billType: "Mobile", comp_name: "Fido", plan_name: "Post Paid", phone_no: phone1, data_used: 20.40, minutes_used: 225)


let myDict1 = ["internet": internet1, "mobile": mobile1]

// checking if email valid or not
var email1 = "nitinjaswal44@gmail.com"
if(try isValidEmail(emailStr: email1) ){}else{
    email1 = "Invalid email"
}

var customer1 = CustomerClass(cust_id: 1, first_name: "Nitin", last_name: "Jaswal", cust_email: email1, bill_dict: myDict1)


// 2. enterning value of customer2 with 3 types of bill
var internet2 = InternetClass(billId: "Internet002", billDate: "Monday, 10 June, 2018", billAmount: 406.00, billType: "Internet", companyName: "Giga", dataUsed: 60)
// checking if phoneNo valid or not
var phone2 = "431-653-6703"
if(isValidPhone(phoneNo: phone2) ){}else{
    phone2 = "Invalid email"
}
var mobile2 = MobileClass(billId: "Mobile002", billDate: "Tuesday, 03 June, 2018", billAmount: 121.30, billType: "Mobile", comp_name: "Freedom", plan_name: "Post Paid", phone_no: phone2, data_used: 100.00, minutes_used: 840)
var hydro2 = HydroClass(billId: "Hydro002", billDate: "Wednesday, 23 June, 2018", billAmount: 936.50, billType: "Hydro", agencyName: "NewTown-Hydro", unitsConsumed: 44.00)

let myDict2 = ["internet": internet2, "mobile": mobile2, "hydro": hydro2]

// checking if email valid or not
var email2 = "rklee@gmail.com"
if(try isValidEmail(emailStr: email2) ){}else{
    email2 = "Invalid email"
}
var customer2 = CustomerClass(cust_id: 2, first_name: "Rocky", last_name: "Lee", cust_email: email2, bill_dict: myDict2)


// 3. enterning value of customer3 with 1 types of bill
var internet3 = InternetClass(billId: "Internet003", billDate: "Monday, 10 May, 2019", billAmount: 302.00, billType: "Internet", companyName: "SallyCom", dataUsed: 160)

let myDict3 = ["internet": internet3]

// checking if email valid or not
var email3 = "sm44@gmail.com"
if(try isValidEmail(emailStr: email3) ){}else{
    email3 = "Invalid email"
}

var customer3 = CustomerClass(cust_id: 5, first_name: "Sassy", last_name: "Michale", cust_email: email3, bill_dict: myDict3)

let myCustomerArr: [AnyObject] = [customer1, customer2, customer3]
let myCustomerSortedArr =  [AnyObject]()


// MARK: - Printing the Data
// printing customers list for customer id = 1 and 5
for i in 0..<myCustomerArr.count {
    
    // calling display function of customer class to display detail for customer id = 1 and 5
    if((myCustomerArr[i] as! CustomerClass).id == 1 || (myCustomerArr[i] as! CustomerClass).id == 5){
        (myCustomerArr[i] as! CustomerClass).displayData()
    }
    
}




