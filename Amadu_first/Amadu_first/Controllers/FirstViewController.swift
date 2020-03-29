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
    var filteredProfiles = [Profile]()
    
    struct Cells {
        static let profileCell = "profileCell"
    }
    
    let searchController = UISearchController(searchResultsController: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationItem.title = "친구"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        profiles = fetchData()
        configureTableview()
        setSearchController()
    }
    
    func configureTableview(){
        view.addSubview(tableView)
        setTableviewDelegate()
        tableView.rowHeight = 60
        tableView.register(ProfileCell.self, forCellReuseIdentifier: Cells.profileCell)
        tableView.pin(to: view)
    }
    
    func setTableviewDelegate(){
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    //MARK:Set search profile
    func setSearchController(){
        // Setup the Search Controller
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search Friend"
        navigationItem.searchController = searchController
        definesPresentationContext = true
    }
    
    func searchBarIsEmpty() -> Bool {
        // Returns true if the text is empty or nil
        return searchController.searchBar.text?.isEmpty ?? true
    }
    
    func filterContentForSearchText(_ searchText: String, scope: String = "All") {
        filteredProfiles = profiles.filter({( profile : Profile) -> Bool in
            return profile.name.lowercased().contains(searchText.lowercased())
        })
        
        tableView.reloadData()
    }
    
    func isFiltering() -> Bool {
      return searchController.isActive && !searchBarIsEmpty()
    }
}

//MARK: Add TableView
extension FirstViewController : UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if isFiltering(){
            return filteredProfiles.count
        }
        
        return profiles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.profileCell) as! ProfileCell
        let profile : Profile
        
        if isFiltering(){
            profile = filteredProfiles[indexPath.row]
        }else{
            profile = profiles[indexPath.row]
        }
//        let profile = profiles[indexPath.row]
        
        cell.set(profile: profile)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
//        deleteAction(at: indexPath)
        return UISwipeActionsConfiguration(actions: [deleteAction(at: indexPath)])
    }
    
    func deleteAction(at indexPath: IndexPath) -> UIContextualAction{
        let action = UIContextualAction(style: .normal, title: "delete") { (action, view, completion) in
            self.profiles.remove(at: indexPath.row)
            self.tableView.deleteRows(at: [indexPath], with: .automatic)
        }
        
        action.backgroundColor = .red
        
        return action
    }
}


//MARK: Profile data setting
extension FirstViewController{
    func fetchData() -> [Profile]{
        var prolist : [Profile] = []
        for _ in 0..<30{
            for i in 1..<11{
                prolist.append(Profile(image: UIImage(named: "Pro\(i)")!, name: "이연재"))
            }
        }
//        = Profile(image: UIImage(named: "Pro\(i)")!, name: "로제짱")
//        let profile1 = Profile(image: Images.pro1, name: "로제짱")
//        let profile2 = Profile(image: Images.pro2, name: "이연재")
//        let profile3 = Profile(image: Images.pro3, name: "최용권")
//        let profile4 = Profile(image: Images.pro4, name: "원빈")
//        let profile5 = Profile(image: Images.pro5, name: "백예린")
//        let profile6 = Profile(image: Images.pro6, name: "존예보스")
//        let profile7 = Profile(image: Images.pro7, name: "정재인")
//        let profile8 = Profile(image: Images.pro8, name: "하정우")
//        let profile9 = Profile(image: Images.pro9, name: "윤상원")
//        let profile10 = Profile(image: Images.pro10, name: "고양이")
//        let profile11 = Profile(image: Images.pro11, name: "강철맨")
//
//        return [profile0, profile1, profile2, profile3, profile4, profile5, profile6, profile7, profile8, profile9, profile10, profile11]
        
        return prolist
    }
}

//MARK: Search setting
extension FirstViewController : UISearchResultsUpdating{
    func updateSearchResults(for searchController: UISearchController) {
        filterContentForSearchText(searchController.searchBar.text!)
    }
}
