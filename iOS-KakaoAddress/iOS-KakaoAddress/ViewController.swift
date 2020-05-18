//
//  ViewController.swift
//  iOS-KakaoAddress
//
//  Created by once on 2020/05/18.
//  Copyright © 2020 once. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    let button = UIButton()
    let button : UIButton = {
        let button = UIButton()
        button.addTarget(self, action: #selector(search), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        buttonAutolayout()
    }

    func buttonAutolayout(){
        view.addSubview(button)
        button.setTitle("search", for: .normal)
        button.setTitleColor(.black, for: .normal)
//        button.addTarget(self, action: #selector(search), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }

    @objc func search(){
        let searchVC = SearchViewController()
        navigationController?.pushViewController(searchVC, animated: true)
    }
}

