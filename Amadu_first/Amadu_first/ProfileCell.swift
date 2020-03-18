//
//  ProfileCell.swift
//  Amadu_first
//
//  Created by once on 19/03/2020.
//  Copyright © 2020 once. All rights reserved.
//

import UIKit

class ProfileCell: UITableViewCell {
    
    var profileImage = UIImageView()
    var profileLabel = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(profileImage)
        addSubview(profileLabel)
        
        configureImageView()
        configureLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func configureImageView(){
        profileImage.layer.cornerRadius = 10
        profileImage.clipsToBounds = true
    }
    
    func configureLabel(){
        profileLabel.numberOfLines = 0
        profileLabel.adjustsFontSizeToFitWidth = true
    }
    
    func setImageConstraints(){
        profileImage.translatesAutoresizingMaskIntoConstraints = false
        profileImage.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        profileImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        profileImage.heightAnchor.constraint(equalToConstant: 40).isActive = true
        profileImage.widthAnchor.constraint(equalTo: profileImage.heightAnchor, multiplier: 1).isActive = true
    }
    
    func setLabelConstraints(){
        profileLabel.translatesAutoresizingMaskIntoConstraints = false
        profileLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        profileLabel.leadingAnchor.constraint(equalTo: profileImage.trailingAnchor, constant: 20).isActive = true
        profileLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        profileLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
    }
    
}


