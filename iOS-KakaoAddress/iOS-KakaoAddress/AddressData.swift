//
//  AddressData.swift
//  iOS-KakaoAddress
//
//  Created by once on 2020/05/18.
//  Copyright © 2020 once. All rights reserved.
//

import Foundation

struct Address: Codable {
    var address : String
    var jibunAddress : String
    
    init(address : String ,jibunAddress : String) {
        self.address = address
        self.jibunAddress = jibunAddress
    }
}
