//
//  SecondViewController.swift
//  test
//
//  Created by once on 2020/06/06.
//  Copyright © 2020 once. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class SecondViewController: UIViewController {
  let disposeBag = DisposeBag()
  
    let selectedColorSubject = PublishSubject<UIColor>()
    var selectedColor: Observable<UIColor> {
        return selectedColorSubject.asObservable()
    }
//    lazy var selectedColor: Observable<UIColor> = selectedColorSubject.asObservable()
    
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = UIColor.gray
  
    let redButton = UIButton(frame: CGRect(x: 0, y: 100, width: 100, height: 100))
    redButton.backgroundColor = UIColor.red
    let blueButton = UIButton(frame: CGRect(x: 200, y: 100, width: 100, height: 100))
    blueButton.backgroundColor = UIColor.blue
  
    view.addSubview(redButton)
    view.addSubview(blueButton)
  
    let redObservable = redButton.rx.tap.map { UIColor.red }
    let blueObservable = blueButton.rx.tap.map { UIColor.blue }
  
    Observable.of(redObservable, blueObservable)
      .merge()
    .bind(onNext: complete)
//      .subscribe(onNext: { [weak self] in
//       self?.complete(color: $0)
//      })
    .disposed(by: disposeBag)
  }

  func complete(color: UIColor) {
    dismiss(animated: true) { [weak self] in
      self?.selectedColorSubject.onNext(color)
      self?.selectedColorSubject.onCompleted()
    }
  }
}
