//
//  ViewController.swift
//  RxSwift-Memo
//
//  Created by once on 2020/05/15.
//  Copyright © 2020 once. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {
    
    var disposeBag = DisposeBag()
    
    @IBOutlet weak var idText: UITextField!
    @IBOutlet weak var pwText: UITextField!
    @IBOutlet weak var validID: UIView?
    @IBOutlet weak var validPW: UIView!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        validID?.isHidden = true
    }
    
    @IBAction func exJust1(){
        Observable.just("hello")
            .subscribe(onNext: { str in
                print(str)
            })
            .disposed(by: disposeBag)
    }
}


