//
//  SceneDelegate.swift
//  Amadu_first
//
//  Created by once on 10/03/2020.
//  Copyright © 2020 once. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
//        guard let _ = (scene as? UIWindowScene) else { return }
        
        //MARK: rootView 설정
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = ViewController()
            self.window = window
            window.makeKeyAndVisible()
        }
//        if let windowScene = scene as? UIWindowScene{
//
//            let window = UIWindow(windowScene: windowScene)
//
//            let friendVC = UINavigationController(rootViewController: FirstViewController())
//            friendVC.tabBarItem = UITabBarItem(title: "Friend", image: #imageLiteral(resourceName: "Pro11"), tag: 0)
//
//            let listVC = UINavigationController(rootViewController: FirstViewController())
//            listVC.tabBarItem = UITabBarItem(title: "List", image: #imageLiteral(resourceName: "Pro4"), tag: 1)
//
//            let configVC = UINavigationController(rootViewController: FirstViewController())
//            configVC.tabBarItem = UITabBarItem(title: "Config", image: #imageLiteral(resourceName: "Pro1"), tag: 2)
//
//            let tabBarController = UITabBarController()
//            tabBarController.viewControllers = [friendVC, listVC, configVC]
//
//            window.rootViewController = tabBarController
//            self.window = window
//            window.makeKeyAndVisible()
//
//        }
        
        
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

