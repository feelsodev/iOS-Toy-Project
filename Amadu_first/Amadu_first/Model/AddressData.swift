//
//  AddressData.swift
//  Amadu_first
//
//  Created by once on 07/04/2020.
//  Copyright © 2020 once. All rights reserved.
//

import UIKit

//struct AddressData {
//    var title : String
//}

class AddressData{
    var title : String
    
    init(title : String){
        self.title = title
    }
    
    static var dummyList : [AddressData] = [
        AddressData(title: "ehvkd")
    ]
}
