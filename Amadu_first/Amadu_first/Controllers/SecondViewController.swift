//
//  SecondViewController.swift
//  Amadu_first
//
//  Created by once on 11/03/2020.
//  Copyright © 2020 once. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, SendDataDelegate{
    
    func sendData(data: String) {
        self.outputText.text = data
    }
    
    let outputText : UITextField = {
        let text1 = UITextField(frame: CGRect(x: 30, y: 300, width: 300, height: 30))
        text1.layer.borderWidth = 1.0
        text1.layer.borderColor = UIColor.black.cgColor
        return text1
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white   //배경 화이트
        let add = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(clickBtn2))
        self.navigationItem.rightBarButtonItem = add
        self.navigationItem.title = "약속리스트"
        view.addSubview(outputText)
        
    }
    
    func setContext(name : String){
        self.outputText.text = name
    }
    
    //MARK: 버튼 클릭 이벤트
    @objc func clickBtn(){
        print("click!!")
        let addVC = AddressListViewController()
        addVC.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(addVC, animated: true)
    }
    
    @objc func clickBtn2(){
        let addVC = AddAppointmentListViewController()
        let navigation = UINavigationController(rootViewController: addVC)
        self.navigationController?.present(navigation, animated: true , completion: nil)
        
    }
}


