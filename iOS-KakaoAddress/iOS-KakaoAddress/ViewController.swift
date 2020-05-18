//
//  ViewController.swift
//  iOS-KakaoAddress
//
//  Created by once on 2020/05/18.
//  Copyright © 2020 once. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    let label = UILabel()
    let tableview = UITableView()
    var resultList: [Address] = [Address(address: "hi", jibunAddress: "hi"),
    Address(address: "tq", jibunAddress: "tq")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        test()
        view.addSubview(label)
        
        view.addSubview(tableview)
        tableview.register(AddressCell.self, forCellReuseIdentifier: "cell")
        tableview.tableFooterView = UIView()
        view.backgroundColor = .white
        tableview.rowHeight = 90
        setTableViewDelegate()
        
    }
    
    func setTableViewDelegate(){
        tableview.delegate = self
        tableview.dataSource = self
        tableview.pin(to: view)
    }

    func test(){
        label.frame = CGRect(x: 0, y: 100, width: 200, height: 200)
        label.text = "hdgfdfdfdfd"
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
//        label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5).isActive = true
//        tableview.translatesAutoresizingMaskIntoConstraints = false
//        tableview.topAnchor.constraint(equalTo: label.bottomAnchor).isActive = true
    }
}

extension ViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resultList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! AddressCell
        let address = resultList[indexPath.row]
        cell.set(data: address)
        print("reload")
        return cell
    }
//
    
    
}
