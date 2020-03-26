//
//  UIView+Alert.swift
//  Amadu_first
//
//  Created by once on 26/03/2020.
//  Copyright © 2020 once. All rights reserved.
//

import UIKit

extension AddAppointmentListViewController{
    func alert(title: String = "알림", message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "확인", style: .default, handler: nil)
        alert.addAction(okAction)
        
        present(alert, animated: true, completion: nil)
    }
}

