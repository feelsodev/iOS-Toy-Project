//
//  UIView+Ext.swift
//  iOS-KakaoAddress
//
//  Created by once on 2020/05/19.
//  Copyright © 2020 once. All rights reserved.
//
import UIKit

extension UIView{
    func pin(to superView : UIView){
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: superView.topAnchor,constant: 20).isActive = true
        leadingAnchor.constraint(equalTo: superView.leadingAnchor).isActive = true
        trailingAnchor.constraint(equalTo: superView.trailingAnchor).isActive = true
        bottomAnchor.constraint(equalTo: superView.bottomAnchor,constant: 20).isActive = true
    }
}

