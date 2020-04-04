//
//  AddAppointmentCell.swift
//  Amadu_first
//
//  Created by once on 04/04/2020.
//  Copyright © 2020 once. All rights reserved.
//

import UIKit

class AddAppointmentCell: UITableViewCell {
    
    var tempLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(tempLabel)

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(){
        tempLabel.text = "temp"
    }
    
    func configureLabel(){
        tempLabel.numberOfLines = 0
        tempLabel.adjustsFontSizeToFitWidth = true
    }
    
    
    
}
