//
//  AddressData.swift
//  Amadu_first
//
//  Created by once on 07/04/2020.
//  Copyright © 2020 once. All rights reserved.
//

import UIKit

class AddressData{
    var title : String
    var time : String
    
    init(title : String, time: String){
        self.title = title
        self.time = time
    }
    
    static var dummyList : [AddressData] = [
        AddressData(title: "홍대 나의봄날에서 만나기", time: "PM 02:30")
    ]
}
