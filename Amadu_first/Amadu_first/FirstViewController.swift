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
    var profiles: [Profile] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationItem.title = "친구"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        profiles = fetchData()
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
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}


extension FirstViewController{
    
    func fetchData() -> [Profile]{
        let profile1 = Profile(image: Images.pro1, name: "로제짱")
        let profile2 = Profile(image: Images.pro2, name: "이연재")
        let profile3 = Profile(image: Images.pro3, name: "최용권")
        
        return [profile1, profile2, profile3]
    }
}
