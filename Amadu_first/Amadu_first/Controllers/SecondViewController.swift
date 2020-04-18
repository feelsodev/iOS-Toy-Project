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
    
    let dummy = [AddressData(title: "홍대 나의봄날에서 만나기", time: "PM 02:30",personnel: "8명", address: "잔다리로 332"), AddressData(title: "김밥천국", time: "PM 02:30",personnel: "8명", address: "은평구 연신내역")]
    
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
        tableView.rowHeight = 90
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
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        label.text = "Header"
        label.backgroundColor = UIColor.lightGray
        return  label
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return AddressData.dummyList.count
        }
        return dummy.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! AddAppointmentCell
        
        let addressData = indexPath.section == 0 ? AddressData.dummyList[indexPath.row] : dummy[indexPath.row]
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
