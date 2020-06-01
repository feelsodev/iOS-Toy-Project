//
//  ViewModelBindableType.swift
//  RxSwift-Memo
//
//  Created by once on 2020/06/02.
//  Copyright © 2020 once. All rights reserved.
//

import UIKit

protocol ViewModelBindableType {
    associatedtype ViewModelType
    
    var viewModel: ViewModelType! {get set}
    func bindViewModel()
}

extension ViewModelBindableType where Self: UIViewController{
    mutating func bind(viewModel: Self.ViewModelType){
        self.viewModel = viewModel
        loadViewIfNeeded()
        
        bindViewModel()
    }
}
