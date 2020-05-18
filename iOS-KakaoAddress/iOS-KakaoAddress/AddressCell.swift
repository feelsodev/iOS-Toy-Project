//
//  AddressCell.swift
//  iOS-KakaoAddress
//
//  Created by once on 2020/05/19.
//  Copyright © 2020 once. All rights reserved.
//

import UIKit

class AddressCell : UITableViewCell{
    let address = UILabel()
    let jibunAddress = UILabel()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(address)
        addSubview(jibunAddress)
        
        labelAutolayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(data : Address){
        address.text = data.address
        jibunAddress.text = data.jibunAddress
    }
    
    func labelSet(){
        address.numberOfLines = 0
        jibunAddress.numberOfLines = 0
    }
    
    func labelAutolayout(){
        address.translatesAutoresizingMaskIntoConstraints = false
        address.topAnchor.constraint(equalTo: topAnchor).isActive = true
        address.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5).isActive = true
        
        jibunAddress.translatesAutoresizingMaskIntoConstraints = false
        jibunAddress.topAnchor.constraint(equalTo: address.bottomAnchor).isActive = true
        jibunAddress.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5).isActive = true
        
    }
    
}
