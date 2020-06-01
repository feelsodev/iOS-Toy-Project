//
//  MemoComposeViewController.swift
//  RxSwift-Memo
//
//  Created by once on 2020/06/02.
//  Copyright © 2020 once. All rights reserved.
//

import UIKit

class MemoComposeViewController: UIViewController, ViewModelBindableType{
    var viewModel: MemoComposeViewModel!
    
    typealias ViewModelType = MemoComposeViewModel

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func bindViewModel() {
        
    }
}
