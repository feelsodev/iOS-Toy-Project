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
        bindUI()
    }
    
    
    func bindUI(){
        //ID Check
        idText.rx.text.orEmpty
            .map(idValid)
            .subscribe(onNext: { b in
                self.validID?.isHidden = b
            })
            .disposed(by: disposeBag)
        
        //PW Check
        pwText.rx.text.orEmpty
            .map(pwValid)
            .subscribe(onNext: { b in
                self.validPW?.isHidden = b
            })
            .disposed(by: disposeBag)
    }
    
    
    @IBAction func exJust1(){
        Observable.just("hello")
            .subscribe(onNext: { str in
                print(str)
            })
            .disposed(by: disposeBag)
    }
    
    
    func idValid(_ id: String) -> Bool{
        return id.contains("@") && id.contains(".")
    }
    
    func pwValid(_ pw: String) -> Bool{
        return pw.count > 5
    }
    
}


