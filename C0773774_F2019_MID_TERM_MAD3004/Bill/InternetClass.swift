//
//  InternetClass.swift
//  C0773774_F2019_MID_TERM_MAD3004
//
//  Created by Apple on 19/10/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation

/// this is the class to define the operation and values of Internet Bill
class NJInternetClass: NJBillClass {

    // MARK: - Properties
    /// this is the company name of Internet Bill
    var name = String()
    /// this is data used by customer in Internet Bill
    var data = Float()
    /// this is to concat the "Units" with data
    var final_data: String {
        get {
            let result = String(format: "%.2f Units", data)
            return result
        }
    }
    
    // MARK: - Functions
    init(billId: Int, billDate: String, billAmount: Float, billType: String, companyName: String, dtaUsed: Float) {
        //
        super.init(bill_id: billId, bill_date: billDate, bill_amount: billAmount, bill_type: billType)
        
        self.name = companyName
        self.data = dtaUsed
    }
    
    //
}
