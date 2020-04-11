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
    
    let timeImage : UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "clock.png"))
        //this enables autolayout for our imageView
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(tempLabel)
        addSubview(timeImage)
        
        configureLabel()
        setLabelConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set2(data: AddressData){
        tempLabel.text = data.title
    }
    
    func configureLabel(){
        tempLabel.numberOfLines = 0
        tempLabel.adjustsFontSizeToFitWidth = true
    }
    
    
    func setLabelConstraints(){
        tempLabel.translatesAutoresizingMaskIntoConstraints = false
//        tempLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true

        tempLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 12).isActive = true
        tempLabel.heightAnchor.constraint(equalToConstant: 48).isActive = true
        tempLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
        
        timeImage.translatesAutoresizingMaskIntoConstraints = false
        timeImage.topAnchor.constraint(equalTo: tempLabel.bottomAnchor).isActive = true
        timeImage.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 12).isActive = true
        timeImage.heightAnchor.constraint(equalToConstant: 35).isActive = true
        
//        profileImage.translatesAutoresizingMaskIntoConstraints = false
//        profileImage.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
//        profileImage.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 12).isActive = true
//        profileImage.heightAnchor.constraint(equalToConstant: 48).isActive = true
//        profileImage.widthAnchor.constraint(equalTo: profileImage.heightAnchor, multiplier: 1).isActive = true
    }
    
    
}
