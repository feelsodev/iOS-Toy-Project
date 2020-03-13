//
//  AddressListViewController.swift
//  Amadu_first
//
//  Created by once on 12/03/2020.
//  Copyright © 2020 once. All rights reserved.
//

import UIKit

class AddressListViewController: UIViewController {

    let button : UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("BACK", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .darkGray
        view.addSubview(button)
        setupButtonLayout()
        
        button.addTarget(self, action: #selector(backBtn), for: .touchUpInside)
    }

    func setupButtonLayout(){
        button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        button.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        button.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50 ).isActive = true
    }
    
    @objc func backBtn(){
        print("click!!")
        dismiss(animated: true, completion: nil)
    }
}
