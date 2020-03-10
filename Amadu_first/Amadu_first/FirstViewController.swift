//
//  FirstViewController.swift
//  Amadu_first
//
//  Created by once on 11/03/2020.
//  Copyright © 2020 once. All rights reserved.
//

import UIKit

class FirstViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nav = generateNavController(vc: ViewController(), title: "jaein")
        let nav2 = generateNavController(vc: SecondViewController(), title: "sangwon")
        let nav3 = generateNavController(vc: ThirdViewController(), title: "jongchan")
        UINavigationBar.appearance()
        
        viewControllers = [nav, nav2, nav3]
        // Do any additional setup after loading the view.
        
    }
    
    func generateNavController(vc : UIViewController, title: String) -> UINavigationController{
        let navController = UINavigationController(rootViewController: vc)
        navController.title = title
        return navController
    }

}
