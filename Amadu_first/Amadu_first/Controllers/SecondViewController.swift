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
        let add = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(clickBtn2))
        self.navigationItem.rightBarButtonItem = add
        self.navigationItem.title = "약속리스트"
        configureTableview()
        
        
    }
    
    func configureTableview() {
        view.addSubview(tableView)
        setTableViewDelegate()
        tableView.rowHeight = 60
        tableView.register(AddAppointmentCell.self, forCellReuseIdentifier: cellId)
    }
    
    func setTableViewDelegate(){
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    //MARK: 버튼 클릭 이벤트
    @objc func clickBtn2(){
        let addVC = AddAppointmentListViewController()
        let navigation = UINavigationController(rootViewController: addVC)
//        addVC.delegate = self
        self.navigationController?.present(navigation, animated: true , completion: nil)

    }
}

extension SecondViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! AddAppointmentCell
        return cell
    }
    
}
