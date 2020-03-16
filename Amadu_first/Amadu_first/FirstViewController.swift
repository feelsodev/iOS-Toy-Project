//
//  FirstViewController.swift
//  Amadu_first
//
//  Created by once on 11/03/2020.
//  Copyright © 2020 once. All rights reserved.
//

import UIKit

class FirstViewController: UITableViewController {
    
    let celled = "celled"

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        navigationItem.title = "친구"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: celled)
    }
    
    override func tableView(_ tableView : UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView : UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: celled, for: indexPath)
        cell.textLabel?.text = "SOMETHING"
        
        return cell
    }
    
}
