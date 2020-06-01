//
//  MemoListViewController.swift
//  RxSwift-Memo
//
//  Created by once on 2020/05/31.
//  Copyright © 2020 once. All rights reserved.
//

import UIKit

class MemoListViewController: UIViewController, ViewModelBindableType{
    var viewModel: MemoListViewModel!
    typealias ViewModelType = MemoListViewModel

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func bindViewModel() {
        
    }
}
