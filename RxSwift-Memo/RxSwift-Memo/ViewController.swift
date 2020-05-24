//
//  ViewController.swift
//  RxSwift-Memo
//
//  Created by once on 2020/05/15.
//  Copyright © 2020 once. All rights reserved.
//

import UIKit
import RxSwift

class ViewController: UIViewController {
    
    var disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func exJust1(){
        Observable.just("hello")
            .subscribe(onNext: { str in
                print(str)
            })
            .disposed(by: disposeBag)
    }
}


