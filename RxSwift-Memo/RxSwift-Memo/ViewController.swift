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
    @IBOutlet weak var validID: UIView!
    @IBOutlet weak var validPW: UIView!
    
    @IBOutlet weak var loginBtn: UIButton!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindUI()
    }
    
    
    
    func bindUI(){
        
//        let idInput: Observable<String> = idText.rx.text.orEmpty.asObservable()
//        let idValid = idInput.map(idValid)
//
//        let pwInput: Observable<String> = pwText.rx.text.orEmpty.asObservable()
//        let pwValid = pwInput.map(pwValid)
//
//
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
        
        Observable.combineLatest(
            idText.rx.text.orEmpty.map(idValid),
            pwText.rx.text.orEmpty.map(pwValid),
            resultSelector: { s1, s2 in s1 && s2 }
        )
            .subscribe(onNext: {b in
                self.loginBtn.isEnabled = b
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
    
    
    private func idValid(_ id: String) -> Bool{
        return id.contains("@") && id.contains(".")
    }
    
    private func pwValid(_ pw: String) -> Bool{
        return pw.count > 5
    }
    
}


