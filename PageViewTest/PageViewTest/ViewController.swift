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
    let pageView = PageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal, options: nil)
    let completeBtn = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        attribute()
        layout()
    }

    func attribute() {
        view.backgroundColor = .white
        firstView.backgroundColor = .darkGray
        
//        completeBtn.setTitle("완료", for: .normal)
//        completeBtn.setTitleColor(.black, for: .normal)
//        completeBtn.layer.borderWidth = 1.0
//        completeBtn.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
//        completeBtn.addTarget(self, action: #selector(addManna), for: .touchUpInside)
    }
    
    func layout() {
        view.addSubview(pageView.view)
        pageView.view.translatesAutoresizingMaskIntoConstraints = false
        pageView.view.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 70).isActive = true
        pageView.view.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        pageView.view.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
//        pageView.view.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.7).isActive = true
        pageView.view.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true

    }
    
//    func clickBtn() {
//        let vcs = pageView.VCArr
//        
//    }
    
//    func next() {
//        let vcs = self.viewControllerList
//        //or self.viewControllers
//        let currentPage = self.pageControl.currentPage
//        let nextPage = currentPage + 1
//
//        if nextPage < vcs.count {
//            let nextVC = vcs[nextPage]
//            self.setViewControllers([nextVC], direction: .forward, animated: true) { _ in
//                self.pageControl.currentPage = nextPage
//            }
//        }
//    }
}

