//
//  AddAppointmentListViewController.swift
//  Amadu_first
//
//  Created by once on 25/03/2020.
//  Copyright © 2020 once. All rights reserved.
//

import UIKit

protocol SendDataDelegate {
    func sendData(data : String)
}

class AddAppointmentListViewController: UIViewController {
        
    var delegate : SendDataDelegate?
    
    let inputText : UITextField = {
        let text = UITextField(frame: CGRect(x: 30, y: 300, width: 300, height: 30))
        text.layer.borderWidth = 1.0
        text.layer.borderColor = UIColor.black.cgColor
        text.textColor = .black
        return text
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addNavBarBtutton()
        view.addSubview(inputText)
    }
    
    func addNavBarBtutton(){
        self.navigationItem.title = "once"
        let save = UIBarButtonItem(title: "save", style: .plain, target: self ,action: #selector(saveView))
        let cancel = UIBarButtonItem(title: "cancel", style: .plain, target: self, action: #selector(cancelView))
        self.navigationItem.rightBarButtonItem = save
        self.navigationItem.leftBarButtonItem = cancel
    }

    @objc func saveView(){
        guard let name = inputText.text,
            name.count > 0 else{
                alert(message: "메모를 입력하세요")
                return
        }

        delegate?.sendData(data: name)
//        send?.sendData(data: name)
        dismiss(animated: true, completion: nil)
    }
    
    @objc func cancelView(){
        dismiss(animated: true, completion: nil)
    }
}
