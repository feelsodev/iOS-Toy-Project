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
    let titleText = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        attribute()
        layout()
    }

    func attribute() {
        view.backgroundColor = .white

        completeBtn.setTitle("완료", for: .normal)
        completeBtn.setTitleColor(.black, for: .normal)
        completeBtn.layer.borderWidth = 1.0
        completeBtn.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        completeBtn.addTarget(self, action: #selector(btn), for: .touchUpInside)
        
        
        titleText.layer.borderWidth = 1.0
        titleText.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
    
    func layout() {
        view.addSubview(completeBtn)
        completeBtn.translatesAutoresizingMaskIntoConstraints = false
        completeBtn.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 5).isActive = true
//        completeBtn.bottomAnchor.constraint(equalTo: view.topAnchor, constant: -400).isActive = true
        completeBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        completeBtn.widthAnchor.constraint(equalToConstant: 100).isActive = true
        completeBtn.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        view.addSubview(titleText)
        titleText.translatesAutoresizingMaskIntoConstraints = false
        titleText.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        titleText.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleText.heightAnchor.constraint(equalToConstant: 50).isActive = true
        titleText.widthAnchor.constraint(equalToConstant: 200).isActive = true
    }
    
    func nextBtn() {
        let currentView = pageView.VCArr
        let currentPage = pageView.pageControl.currentPage
        let nextPage = currentPage + 1
        
        if nextPage < currentView.count {
            let nextVC = currentView[nextPage]
            self.pageView.setViewControllers([nextVC], direction: .forward, animated: true) { _ in
                self.pageView.pageControl.currentPage = nextPage
            }
            print("current page : \(nextPage)")
        }
    }
    
    @objc func btn(_ sender: Any) {

        sleep(2)
        view.addSubview(pageView.view)
        pageView.view.translatesAutoresizingMaskIntoConstraints = false
        pageView.view.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 70).isActive = true
        pageView.view.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        pageView.view.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        pageView.view.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true

    }
}

