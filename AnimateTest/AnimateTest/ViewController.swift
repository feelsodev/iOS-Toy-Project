//
//  ViewController.swift
//  AnimateTest
//
//  Created by once on 2020/05/06.
//  Copyright © 2020 once. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let titleLabel = UILabel()
    let bodyLabel = UILabel()
    
    
    fileprivate func setupLabels() {
        titleLabel.numberOfLines = 0
        titleLabel.text = "I find some peace through U"
        titleLabel.font = UIFont(name: "Futura", size: 34)
        
        bodyLabel.numberOfLines = 0
        bodyLabel.text = "Live like crazy. Like possessed by something. study in the library until after dawn I watch the sun rise on that bench, and I don't wash it, and I just drop by the coffee shop in front of my house, and drink coffee alone, and it's nice to be narrow and dirty, so I can reach my shoes on the road I've never been to before."
    }
    
    fileprivate func setupStackView() {
        let stackView = UIStackView(arrangedSubviews: [titleLabel, bodyLabel])
        stackView.axis = .vertical
        stackView.spacing = 8
        stackView.frame = CGRect(x: 0, y: 0, width: 200, height: 400)
        view.addSubview(stackView)
        
        //autolayout
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        stackView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -100 ).isActive = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLabels()
        setupStackView()
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTapAnimations)))
    }

    @objc fileprivate func handleTapAnimations(){
        UIView.animate(withDuration: 0.5, delay: 0,usingSpringWithDamping: 0.5,initialSpringVelocity: 0.5 , animations: {
            self.titleLabel.transform = CGAffineTransform(translationX: -30, y: 0)
        }) { (_) in
            
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                
                self.titleLabel.alpha = 0
                self.titleLabel.transform = self.titleLabel.transform.translatedBy(x: 0, y: -150)
            })
        }
        
        
        UIView.animate(withDuration: 0.5, delay: 0.5,usingSpringWithDamping: 0.5,initialSpringVelocity: 0.5 , animations: {
            self.bodyLabel.transform = CGAffineTransform(translationX: -30, y: 0)
        }) { (_) in
            
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                
                self.bodyLabel.alpha = 0
                self.bodyLabel.transform = self.bodyLabel.transform.translatedBy(x: 0, y: -150)
            })
        }

    }

}

