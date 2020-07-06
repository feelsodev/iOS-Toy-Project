//
//  AddAppointmentListViewController.swift
//  Amadu_first
//
//  Created by once on 25/03/2020.
//  Copyright © 2020 once. All rights reserved.
//

import UIKit

protocol reloadTable {
    func reload()
}

class AddAppointmentListViewController: UIViewController {
    
    var delegate : reloadTable?
    
    let titleText : UITextField = {
        let text = UITextField(frame: CGRect(x: 30, y: 300, width: 300, height: 30))
        text.layer.borderWidth = 1.0
        text.layer.borderColor = UIColor.black.cgColor
        text.textColor = .black
        return text
    }()
    
    let timeText : UITextField = {
        let text = UITextField(frame: CGRect(x: 30, y: 340, width: 300, height: 30))
        text.layer.borderWidth = 1.0
        text.layer.borderColor = UIColor.black.cgColor
        text.textColor = .black
        return text
    }()
    
    let personnelText : UITextField = {
        let text = UITextField(frame: CGRect(x: 30, y: 380, width: 300, height: 30))
        text.layer.borderWidth = 1.0
        text.layer.borderColor = UIColor.black.cgColor
        text.textColor = .black
        return text
    }()

    
    let addressText : UITextField = {
        let text = UITextField(frame: CGRect(x: 30, y: 420, width: 300, height: 30))
        text.layer.borderWidth = 1.0
        text.layer.borderColor = UIColor.black.cgColor
        text.textColor = .black
        return text
    }()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addNavBarBtutton()
        view.addSubview(titleText)
        view.addSubview(timeText)
        view.addSubview(personnelText)
        view.addSubview(addressText)
    }
    
    func addNavBarBtutton(){
        self.navigationItem.title = "once"
        let save = UIBarButtonItem(title: "save", style: .plain, target: self ,action: #selector(saveView))
        let cancel = UIBarButtonItem(title: "cancel", style: .plain, target: self, action: #selector(cancelView))
        self.navigationItem.rightBarButtonItem = save
        self.navigationItem.leftBarButtonItem = cancel
    }

    @objc func saveView(_ sender : UINavigationItem){
        guard let name = titleText.text,
            name.count > 0 else{
                alert(message: "메모를 입력하세요")
                return
        }
        
        let time :String = timeText.text!
        let personnel :String = personnelText.text!
        let address : String = addressText.text!

        let data = AddressData(title: name, time: time, personnel: personnel, address: address)
        AddressData.dummyList.append(data)
        
        delegate?.reload()
        
        dismiss(animated: true, completion: nil)
    }
    
    @objc func cancelView(){
        dismiss(animated: true, completion: nil)
    }
}
