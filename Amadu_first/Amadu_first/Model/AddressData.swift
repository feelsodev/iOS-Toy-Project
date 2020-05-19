//
//  AddressData.swift
//  Amadu_first
//
//  Created by once on 07/04/2020.
//  Copyright © 2020 once. All rights reserved.
//

import UIKit

class AddressData{
//    var expand : Bool
    var title : String
    var time : String
    var personnel : String
    var address : String
    
    init(expand :Bool ,title : String, time: String, personnel : String, address : String){
//        self.expand = expand
        self.title = title
        self.time = time
        self.personnel = personnel
        self.address = address
    }
    
    static var dummyList : [AddressData] = [
        AddressData(expand: false, title: "홍대 나의봄날에서 만나기", time: "PM 02:30",personnel: "8명", address: "잔다리로 332")
    ]
}
