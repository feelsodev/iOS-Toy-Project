//
//  ViewController.swift
//  our-spring-day
//
//  Created by once on 07/03/2020.
//  Copyright © 2020 once. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leading: NSLayoutConstraint!
    @IBOutlet weak var trailing: NSLayoutConstraint!
    
    var menuOut = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addBottomSheetView()
    }
    
    
    @IBAction func menuTapped(_ sender: Any){
        
        if menuOut == false{
            leading.constant = 150
            trailing.constant = -150
            menuOut = true
        }else{
            leading.constant = 0
            trailing.constant = 0
            menuOut = false
        }
//        UIView.animate(withDuration: 0.2
//            , delay: 0.0, options: .curveEaseIn, animations: {self.view.layoutIfNeeded()}, completion:{} print("complete"))
    }

    func addBottomSheetView() {
        let bottomSheetVC = BottomSheetView()
        
        self.addChild(bottomSheetVC)
        self.view.addSubview(bottomSheetVC.view)
        bottomSheetVC.didMove(toParent: self)
        
        let height = view.frame.height
        let width  = view.frame.width
        bottomSheetVC.view.frame = CGRect(x: 0, y: view.frame.maxY, width: width, height: height)
    }
}

