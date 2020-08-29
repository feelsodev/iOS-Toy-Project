//
//  AddressCell.swift
//  iOS-KakaoAddress
//
//  Created by once on 2020/05/19.
//  Copyright © 2020 once. All rights reserved.
//

import UIKit
import Then

class AddressCell : UITableViewCell{
    let address = UILabel()
    let jibunAddress = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(address)
        addSubview(jibunAddress)
        
        labelAutolayout()
        labelSet()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(data : Address){
        address.text = data.address
        jibunAddress.text = data.roadAddress
    }
    
    func labelSet(){
        address.numberOfLines = 0
        jibunAddress.numberOfLines = 0
        
        address.adjustsFontSizeToFitWidth = true
        jibunAddress.adjustsFontSizeToFitWidth = true
    }
    
    func labelAutolayout(){
        address.translatesAutoresizingMaskIntoConstraints = false
        address.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 12).isActive = true
        address.heightAnchor.constraint(equalToConstant: 48).isActive = true
        address.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
        
        jibunAddress.translatesAutoresizingMaskIntoConstraints = false
        jibunAddress.topAnchor.constraint(equalTo: address.bottomAnchor).isActive = true
        jibunAddress.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 12).isActive = true
        jibunAddress.heightAnchor.constraint(equalToConstant: 35).isActive = true
    }
    
}
