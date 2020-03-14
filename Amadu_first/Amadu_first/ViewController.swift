//
//  ViewController.swift
//  Amadu_first
//
//  Created by once on 10/03/2020.
//  Copyright © 2020 once. All rights reserved.
//

import UIKit

class ViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //탭바 생성
        let nav = generateNavController(vc: FirstViewController(), title: "FRIEND")
        let nav2 = generateNavController(vc: SecondViewController(), title: "LIST")
        let nav3 = generateNavController(vc: ThirdViewController(), title: "CONFIG")
        UINavigationBar.appearance()
        
        viewControllers = [nav, nav2, nav3]
    }
    
    func generateNavController(vc : UIViewController, title: String) -> UINavigationController{
        let navController = UINavigationController(rootViewController: vc)
        navController.title = title
        return navController
    }
    
}

