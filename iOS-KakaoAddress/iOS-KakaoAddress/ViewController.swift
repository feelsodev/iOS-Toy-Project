//
//  ViewController.swift
//  iOS-KakaoAddress
//
//  Created by once on 2020/05/18.
//  Copyright © 2020 once. All rights reserved.
//

import Alamofire
import Foundation
import UIKit
import SwiftyJSON
import Then
import SnapKit

class ViewController: UIViewController{
    let apiKey = "ec74a28d28177a706155cb8af1fb7ec8"
    
    let search = UITextField().then{
        $0.layer.borderWidth = 1.0
        $0.layer.borderColor = UIColor.black.cgColor
        $0.textColor = .black
        $0.translatesAutoresizingMaskIntoConstraints = false
    }
        
    let button = UIButton().then{
        $0.setTitle("검색", for: .normal)
        $0.tintColor = .white
        $0.backgroundColor = .darkGray
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.addTarget(self, action: #selector(complete), for: .touchUpInside)
    }
    
    let tableView = UITableView().then{
        $0.translatesAutoresizingMaskIntoConstraints = false
    }
    
    let tableOn = UIView().then{
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .white
    }
    
    var resultList: [Address] = []
    
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
    }
    
    func searchAddress(keyword : String){
        let headers: HTTPHeaders = [
            "Authorization": "KakaoAK ec74a28d28177a706155cb8af1fb7ec8"
        ]
        
        let parameters: [String: Any] = [
            "query": keyword
        ]

        AF.request("https://dapi.kakao.com/v2/local/search/keyword.json", method: .get, parameters: parameters, headers: headers)
        .responseJSON { response in
            switch response.result{
            case .success(let value):
                print(JSON(value))


//                self.tableView.reloadData()
            case .failure(let error):
                print(error)
            }

        }
//        AF.request("https://dapi.kakao.com/v2/local/search/keyword.json", method: .get, parameters: parameters, headers: headers)
//            .responseJSON(completionHandler: { response in
//                switch response.result{
//                case .success(let value):
//                    let decoder = JSONDecoder()
//                    let jsonString = JSON(value)["documents"][0]["road_address_name"]
//                    if let data = jsonString, let myAddress = try decoder.decode(Address.self, from: data) {
//                        print(myAddress)
//                    }
//                case .failure(let error):
//                    print(error)
//                }
//
//            })
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
    
    
    @objc func complete(){
        let text = search.text!
        searchAddress(keyword: text)
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
}
