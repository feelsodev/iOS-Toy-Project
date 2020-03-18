//
//  UIView-Ext.swift
//  Amadu_first
//
//  Created by once on 19/03/2020.
//  Copyright © 2020 once. All rights reserved.
//

import UIKit

extension UIView{
    func pin(to superView : UIView){
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: superView.topAnchor).isActive = true
        leadingAnchor.constraint(equalTo: superView.leadingAnchor).isActive = true
        trailingAnchor.constraint(equalTo: superView.trailingAnchor).isActive = true
        bottomAnchor.constraint(equalTo: superView.bottomAnchor).isActive = true
    }
}
