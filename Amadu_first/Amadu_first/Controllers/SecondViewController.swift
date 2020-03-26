//
//  SecondViewController.swift
//  Amadu_first
//
//  Created by once on 11/03/2020.
//  Copyright © 2020 once. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    //MARK: 버튼 생성
//    let button : UIButton = {
//        let button = UIButton(type: .custom)
//        button.setTitle("CLICK", for: .normal)
//        button.setTitleColor(.red, for: .normal)
//        button.translatesAutoresizingMaskIntoConstraints = false
//        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
//        button.setImage(#imageLiteral(resourceName: "Pro11"), for: .normal)
//        //버튼 액션 -> AddressListView로 이동
//        button.addTarget(self, action: #selector(clickBtn), for: .touchUpInside)
//        return button
//    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white   //배경 화이트
        let add = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(clickBtn2))
        self.navigationItem.rightBarButtonItem = add
        self.navigationItem.title = "약속리스트"
    }
    
    //MARK: 버튼 클릭 이벤트
    @objc func clickBtn(){
        print("click!!")
        let addVC = AddressListViewController()
        addVC.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(addVC, animated: true)
//        self.present(AddressListViewController(), animated: true, completion: nil)
    }
    
    @objc func clickBtn2(){
        let addVC = AddAppointmentListViewController()
        let navigation = UINavigationController(rootViewController: addVC)
//        addVC.hidesBottomBarWhenPushed = true
//        self.navigationController?.pushViewController(AddAppointmentListViewController(), animated: true)
//        self.present(AddAppointmentListViewController(), animated: true, completion: nil)
//        addVC.modalPresentationStyle = .fullScreen
        self.navigationController?.present(navigation, animated: true , completion: nil)
    }
}
