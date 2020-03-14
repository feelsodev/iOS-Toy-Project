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
    let button : UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("CLICK", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        
        //버튼 액션 -> AddressListView로 이동
        button.addTarget(self, action: #selector(clickBtn), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white   //배경 화이트
        view.addSubview(button)         //버튼 추가
        setupButtonLayout()             //오토레이아웃
    }
    
    //MARK: 오토레이아웃 설정
    func setupButtonLayout(){
        button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        button.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        button.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
//        button.heightAnchor.constraint(equalToConstant: 50 ).isActive = true
        button.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor).isActive = true
    }
    
    //MARK: 버튼 클릭 이벤트
    @objc func clickBtn(){
        print("click!!")
        let addVC = AddressListViewController()
        addVC.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(addVC, animated: true)
//        self.present(AddressListViewController(), animated: true, completion: nil)
    }
}
