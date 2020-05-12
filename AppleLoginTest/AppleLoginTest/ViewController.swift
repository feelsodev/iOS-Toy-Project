//
//  ViewController.swift
//  AppleLoginTest
//
//  Created by once on 2020/05/11.
//  Copyright © 2020 once. All rights reserved.
//

import UIKit
import AuthenticationServices

class ViewController: UIViewController, ASAuthorizationControllerPresentationContextProviding {
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupProviderLoginView()
    }
    
    
    func setupProviderLoginView() {
        let loginButton = ASAuthorizationAppleIDButton()
        loginButton.frame = CGRect(x: 150, y: 250, width: 200, height: 40)
        loginButton.addTarget(self, action: #selector(handleAuthorizationAppleIDButtonPress), for: .touchUpInside)
        self.view.addSubview(loginButton)
    }
    
    @objc func handleAuthorizationAppleIDButtonPress(){
        let request = ASAuthorizationAppleIDProvider().createRequest()
        request.requestedScopes = [.fullName, .email]
        
        let controller = ASAuthorizationController(authorizationRequests: [request])
        controller.delegate = self
        controller.presentationContextProvider = self
        controller.performRequests()
    }
    
    func presentationAnchor(for controller: ASAuthorizationController) -> ASPresentationAnchor {
        return self.view.window!
    }

}

extension ViewController: ASAuthorizationControllerDelegate{
    func authorizationController(controller: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {
        if let credential = authorization.credential as? ASAuthorizationAppleIDCredential{
            let userIdentifier = credential.user
            let fullName = credential.fullName
            let email = credential.email
            
            print("\(userIdentifier) and \(fullName) and \(email)")
        }
    }
    func authorizationController(controller: ASAuthorizationController, didCompleteWithError error: Error) {
    }
    
}

