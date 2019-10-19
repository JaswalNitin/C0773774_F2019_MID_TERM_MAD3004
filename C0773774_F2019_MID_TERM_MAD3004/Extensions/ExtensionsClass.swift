//
//  ExtensionsClass.swift
//  C0773774_F2019_MID_TERM_MAD3004
//
//  Created by Apple on 19/10/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation

extension Float {
    // used to set as currency.
    func currency() -> String
    {
        // https://stackoverflow.com/questions/41558832/how-to-format-a-double-into-currency-swift-3
        let formatter = NumberFormatter()
        formatter.locale = Locale(identifier: "en_US") 
        formatter.numberStyle = .currency
        let formatmount = formatter.string(from: self as NSNumber)
        let result = String(format: "%@", formatmount!)
        return result
    }
    
    // used to set as Units Usage.
    func unitsUsage() -> String
    {
        let result = String(format: "%.2f MW", self)
        return result
    }
}
