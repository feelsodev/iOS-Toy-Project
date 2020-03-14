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
        button.frame.size = CGSize(width: 20, height: 20)
        button.backgroundColor = .red
        return button
    }()
    
    let label : UILabel = {
        let label = UILabel()
        label.text = "second view"
        label.textAlignment = .center
        label.textColor = .red
        label.font = .boldSystemFont(ofSize: 17)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        AddressListViewController().esBottomBarWhenPushed = true
//        self.tabBarController?.tabBar.isHidden = true

        view.backgroundColor = .blue
        self.view.addSubview(label)
//        view.addSubview(button)
        setupButtonLayout()
//        button.addTarget(self, action: #selector(backBtn), for: .touchUpInside)
//        hidesBottomBarWhenPushed = true
    }
    
    func setupButtonLayout(){
        label.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        label.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        label.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        label.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor).isActive = true
    }
    
    @objc func backBtn(){
        print("click!!")
        dismiss(animated: true, completion: nil)
        hidesBottomBarWhenPushed = true

    }
}
