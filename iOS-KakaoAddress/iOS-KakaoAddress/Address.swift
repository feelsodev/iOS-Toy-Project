//
//  AddressData.swift
//  iOS-KakaoAddress
//
//  Created by once on 2020/05/18.
//  Copyright © 2020 once. All rights reserved.
//

import Foundation

struct Address: Codable {
    var url: String?
    var distance: String?
    var roadAddress : String
    var address : String
    var phone: String?
    var x: String
    var y: String
    var place_name: String?
    var id: String?
    var category_name: String?
    var category_group_code: String?
    var category_group_name: String?
    
    enum CodingKeys: String, CodingKey {
        case url = "place_url"
        case distance
        case roadAddress = "road_address_name"
        case address = "address_name"
        case phone
        case x, y
        case place_name
        case id
        case category_name
        case category_group_name
        case category_group_code
    }
}
