//
//  SecondViewController.swift
//  Amadu_first
//
//  Created by once on 11/03/2020.
//  Copyright © 2020 once. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController{
    
    let cellId = "cellId2"
    var tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white   //배경 화이트
        let add = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(clickBtn))
        self.navigationItem.rightBarButtonItem = add
        self.navigationItem.title = "약속리스트"
        configureTableview()
    }
    
    func configureTableview() {
        view.addSubview(tableView)
        setTableViewDelegate()
        tableView.rowHeight = 120
        tableView.register(AddAppointmentCell.self, forCellReuseIdentifier: cellId)
        tableView.pin(to: view)
    }
    
    func setTableViewDelegate(){
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    //MARK: 버튼 클릭 이벤트
    @objc func clickBtn(){
        let addVC = AddAppointmentListViewController()
        addVC.delegate = self
        let navigation = UINavigationController(rootViewController: addVC)
        self.navigationController?.present(navigation, animated: true , completion: nil)

    }
}

extension SecondViewController : UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AddressData.dummyList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! AddAppointmentCell
        
        let addressData = AddressData.dummyList[indexPath.row]
        cell.set2(data: addressData)
        
        print("cell reload")
        return cell
    }
    
}

extension SecondViewController : reloadTable{
    func reload() {
        self.tableView.reloadData()
    }
}
