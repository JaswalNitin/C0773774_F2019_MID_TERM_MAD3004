//
//  MobileClass.swift
//  C0773774_F2019_MID_TERM_MAD3004
//
//  Created by Apple on 19/10/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation

class MobileClass: BillClass, IPrintPC {
    
    // MARK: - Properties
    /// this is the name of mobile company
    var name = String()
    /// this is the name of plan name
    var plan = String()
    /// this is the name of mobile phone no.
    var phoneNo = String()

    /// this is data used of the plan
    var data = Float()
    var strData = String()
    /// this is used to concat "GB" with data
    var calData: String {
        get{
            let strResult = String(format: "%.2f GB", data)
            return strResult
        }set{
            strData = newValue
        }
    }
    
    /// this is used to save the minutes used
    var minutes = Int()
    var strMinutes = String()
    var calMinutes: String {
        get{
            let strResult = String(format: "%d minutes", minutes)
            return strResult
        }set(finalMin){
            strMinutes = finalMin
        }
    }
    
    
    
    func displayData() {
        <#code#>
    }
    


}
