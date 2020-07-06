//
//  ViewController.swift
//  PageViewTest
//
//  Created by once on 2020/07/06.
//  Copyright © 2020 once. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let firstView = UIView()
    let secondView = UIView()
    let pageView = PageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal, options: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        attribute()
        layout()
    }

    func attribute() {
        firstView.backgroundColor = .red
        secondView.backgroundColor = .gray
    }
    
    func layout() {
        view.addSubview(firstView)
        firstView.translatesAutoresizingMaskIntoConstraints = false
        firstView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        firstView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        firstView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        firstView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.2).isActive = true
        
        view.addSubview(secondView)
        secondView.translatesAutoresizingMaskIntoConstraints = false
        secondView.topAnchor.constraint(equalTo: firstView.bottomAnchor).isActive = true
        secondView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        secondView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        secondView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        secondView.addSubview(<#T##view: UIView##UIView#>)
    }
}

