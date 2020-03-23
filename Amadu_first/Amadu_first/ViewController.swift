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

//        탭바 생성
        let nav = generateNavController(vc: FirstViewController(), title: "FRIEND", image: #imageLiteral(resourceName: "user_image"))
        let nav2 = generateNavController(vc: SecondViewController(), title: "LIST", image: #imageLiteral(resourceName: "list"))
        let nav3 = generateNavController(vc: ThirdViewController(), title: "CONFIG", image: #imageLiteral(resourceName: "setting"))
        
        UITabBar.appearance().barTintColor = .black
        UITabBar.appearance().tintColor = .red
//        UINavigationBar.appearance()

        viewControllers = [nav, nav2, nav3]

        
        delegate = self
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipeGesture))
        swipeRight.direction = .right
        self.view.addGestureRecognizer(swipeRight)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipeGesture))
        swipeLeft.direction = .left
        self.view.addGestureRecognizer(swipeLeft)
    }
    
    func generateNavController(vc : UIViewController, title: String, image : UIImage) -> UINavigationController{
        let navController = UINavigationController(rootViewController: vc)
//        navController.tabBarItem = UITabBarItem(title: title , image: #imageLiteral(resourceName: "Pro11"), tag: )
        navController.title = title
        navController.tabBarItem.image = image
        return navController
    }
    
//    func generateNavController(){
//        let friendVC = UINavigationController(rootViewController: FirstViewController())
//        friendVC.tabBarItem = UITabBarItem(title: "Friend", image: #imageLiteral(resourceName: <#T##String#>), tag: 0)
//
//        let listVC = UINavigationController(rootViewController: FirstViewController())
//        friendVC.tabBarItem = UITabBarItem(title: "List", image: #imageLiteral(resourceName: <#T##String#>), tag: 2)
//
//        let configVC = UINavigationController(rootViewController: FirstViewController())
//        friendVC.tabBarItem = UITabBarItem(title: "Config", image: #imageLiteral(resourceName: <#T##String#>), tag: 3)
//
//        return [friendVC, listVC, configVC]
//    }
    
    @objc func handleSwipeGesture(_ gesture: UISwipeGestureRecognizer) {
        
        if gesture.direction == .left {
            if (self.selectedIndex) < 2 { // 슬라이드할 탭바 갯수 지정 (전체 탭바 갯수 - 1)
                animateToTab(toIndex: self.selectedIndex+1)
            }
        } else if gesture.direction == .right {
            if (self.selectedIndex) > 0 {
                animateToTab(toIndex: self.selectedIndex - 1)
            }
        }
    }
    
}

extension ViewController: UITabBarControllerDelegate  {
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        guard let tabViewControllers = tabBarController.viewControllers, let toIndex = tabViewControllers.firstIndex(of: viewController) else {
            return false
        }
        animateToTab(toIndex: toIndex)
        return true
    }
    
    func animateToTab(toIndex: Int) {
        guard let tabViewControllers = viewControllers,
            let selectedVC = selectedViewController else { return }
        
        guard let fromView = selectedVC.view,
            let toView = tabViewControllers[toIndex].view,
            let fromIndex = tabViewControllers.firstIndex(of: selectedVC),
            fromIndex != toIndex else { return }
        
        
        // Add the toView to the tab bar view
        fromView.superview?.addSubview(toView)
        
        // Position toView off screen (to the left/right of fromView)
        let screenWidth = UIScreen.main.bounds.size.width
        let scrollRight = toIndex > fromIndex
        let offset = (scrollRight ? screenWidth : -screenWidth)
        toView.center = CGPoint(x: fromView.center.x + offset, y: toView.center.y)
        
        // Disable interaction during animation
        view.isUserInteractionEnabled = false
        
        UIView.animate(withDuration: 0.3,
                       delay: 0.0,
                       usingSpringWithDamping: 1,
                       initialSpringVelocity: 0,
                       options: .curveEaseOut,
                       animations: {
                        // Slide the views by -offset
                        fromView.center = CGPoint(x: fromView.center.x - offset, y: fromView.center.y)
                        toView.center = CGPoint(x: toView.center.x - offset, y: toView.center.y)
                        
        }, completion: { finished in
            // Remove the old view from the tabbar view.
            fromView.removeFromSuperview()
            self.selectedIndex = toIndex
            self.view.isUserInteractionEnabled = true
        })
    }
}

