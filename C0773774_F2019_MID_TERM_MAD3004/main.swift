//
//  main.swift
//  C0773774_F2019_MID_TERM_MAD3004
//
//  Created by Apple on 19/10/19.
//  Copyright © 2019 Apple. All rights reserved.
//  Created By Nitin Jaswal

import Foundation

var internet = InternetClass(billId: 1, billDate: "Thursday, 24 January, 2019", billAmount: 336.00, billType: "Internet", companyName: "Bell", dataUsed: 10)
var mobile = MobileClass(billId: 1, billDate: "Tuesday, 25 January, 2019", billAmount: 321.70, billType: "Mobile", comp_name: "Fido", plan_name: "Post Paid", phone_no: "231-453-6643", data_used: 20.40, minutes_used: 225)

let myDict = ["internet": internet, "mobile": mobile]



var customer = CustomerClass(cust_id: 1, first_name: "Nitin", last_name: "Jaswal", cust_email: "nitinjaswal44@gmail.com", total_bill_Amnt: 336.50, bill_dict: myDict)

// 2
var internet1 = InternetClass(billId: 2, billDate: "Thursday, 24 January, 2019", billAmount: 336.00, billType: "Internet", companyName: "Bell", dataUsed: 10)
var mobile1 = MobileClass(billId: 2, billDate: "Tuesday, 25 January, 2019", billAmount: 321.70, billType: "Mobile", comp_name: "Fido", plan_name: "Post Paid", phone_no: "231-453-6643", data_used: 20.40, minutes_used: 225)

let myDict1 = ["internet": internet, "mobile": mobile]

var customer1 = CustomerClass(cust_id: 2, first_name: "Nitin", last_name: "Jaswal", cust_email: "nitinjaswal44@gmail.com", total_bill_Amnt: 336.50, bill_dict: myDict)


let myArr: [AnyObject] = [customer, customer1]

for i in 0..<myArr.count {
    (myArr[i] as! CustomerClass).displayData()
}

let search_id = 2

