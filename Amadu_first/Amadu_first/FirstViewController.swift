//
//  FirstViewController.swift
//  Amadu_first
//
//  Created by once on 11/03/2020.
//  Copyright © 2020 once. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    var tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        navigationItem.title = "친구"
        navigationController?.navigationBar.prefersLargeTitles = true
        configureTableview()
        
    }
    
    func configureTableview(){
        view.addSubview(tableView)
        setTableviewDelegate()
        tableView.rowHeight = 50
        tableView.pin(to: view)

    }
    
    func setTableviewDelegate(){
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension FirstViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}
