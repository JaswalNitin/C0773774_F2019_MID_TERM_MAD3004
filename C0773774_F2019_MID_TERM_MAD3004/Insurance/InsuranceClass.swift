//
//  InsuranceClass.swift
//  C0773774_F2019_MID_TERM_MAD3004
//
//  Created by Apple on 19/10/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation

class InsuranceClass: IPrintPC {
    
    // MARK: - Properties
    
    var providName = String()
    var type = String()
    var startDate = String()
    var endDate = String()
    var totaDays = Int()
    
    
    // MARK: - Life Cycle
    /// initializing the Internet Class
    init(providName: providName, type ){
        
    }
    
    // MARK: - Functions
    /// this is a protocol method to print data
    func displayData() {
        // print data of parent class(Bill Class)
        super.printData()
        
        // print local variables
        print("   Provider Name: ", self.name)
        let data = self.final_data
        print("   Internet Usage: ", data)
    }
    
}

