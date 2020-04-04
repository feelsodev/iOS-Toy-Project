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
        configureLabel()
        setLabelConstraints()

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
    
    func setLabelConstraints(){
        tempLabel.translatesAutoresizingMaskIntoConstraints = false
        tempLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        tempLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 12).isActive = true
        tempLabel.heightAnchor.constraint(equalToConstant: 48).isActive = true
        tempLabel.widthAnchor.constraint(equalTo: tempLabel.heightAnchor, multiplier: 1).isActive = true

        
//        profileImage.translatesAutoresizingMaskIntoConstraints = false
//        profileImage.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
//        profileImage.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 12).isActive = true
//        profileImage.heightAnchor.constraint(equalToConstant: 48).isActive = true
//        profileImage.widthAnchor.constraint(equalTo: profileImage.heightAnchor, multiplier: 1).isActive = true
    }
    
    
}
