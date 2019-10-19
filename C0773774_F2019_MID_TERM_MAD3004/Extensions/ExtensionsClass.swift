//
//  ExtensionsClass.swift
//  C0773774_F2019_MID_TERM_MAD3004
//
//  Created by Apple on 19/10/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation

extension CGFloat {
    // used to set as currency.
    func currency() -> String
    {
        let formatter = NumberFormatter()
        formatter.locale = Locale.current // Change this to another locale if you want to force a specific locale, otherwise this is redundant as the current locale is the default already
        formatter.numberStyle = .currency
        let formattedTipAmount = formatter.string(from: self as NSNumber)
        let strAmount = String(format: "%@", formattedTipAmount!)
        return strAmount
    }
}
