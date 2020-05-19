//
//  ViewController.swift
//  iOS-KakaoAddress
//
//  Created by once on 2020/05/18.
//  Copyright © 2020 once. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    let search : UITextField = {
        let text = UITextField()
        text.layer.borderWidth = 1.0
        text.layer.borderColor = UIColor.black.cgColor
        text.textColor = .black
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    let button : UIButton = {
        let button = UIButton()
        button.setTitle("검색", for: .normal)
        button.tintColor = .white
        button.backgroundColor = .darkGray
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let tableView : UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()
    
    let tableOn : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var resultList: [Address] = [Address(address: "hi", jibunAddress: "hi"),
    Address(address: "tq", jibunAddress: "tq")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(search)
        view.addSubview(button)
        view.addSubview(tableOn)
        tableOn.addSubview(tableView)
        
        tableView.register(AddressCell.self, forCellReuseIdentifier: "cell")
        tableView.tableFooterView = UIView()
        tableView.rowHeight = 90
        setTableViewDelegate()
        configAutolayout()
        
    }
    
    func setTableViewDelegate(){
        tableView.delegate = self
        tableView.dataSource = self
//        tableView.pin(to: tableOn)
    }

    func configAutolayout(){
        search.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        search.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        search.heightAnchor.constraint(equalToConstant: 40).isActive = true
        search.widthAnchor.constraint(equalToConstant: 250).isActive = true
        
        button.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        button.leadingAnchor.constraint(equalTo: search.trailingAnchor, constant: 10).isActive = true
        button.widthAnchor.constraint(equalToConstant: 50).isActive = true
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        tableOn.topAnchor.constraint(equalTo: search.bottomAnchor, constant: 10).isActive = true
        tableOn.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        tableOn.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        tableOn.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        
        tableView.topAnchor.constraint(equalTo: tableOn.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: tableOn.bottomAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: tableOn.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: tableOn.trailingAnchor).isActive = true
    }
    
}

extension ViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resultList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! AddressCell
        let address = resultList[indexPath.row]
        cell.set(data: address)
        print("reload")
        return cell
    }
//
    
    
}
