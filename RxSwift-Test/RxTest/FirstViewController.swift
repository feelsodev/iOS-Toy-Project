//
//  FirstViewController.swift
//  test
//
//  Created by once on 2020/06/06.
//  Copyright © 2020 once. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class FirstViewController: UIViewController {
  let disposeBag = DisposeBag()

  override func viewDidLoad() {
    super.viewDidLoad()
    let btn = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
    view.addSubview(btn)
    btn.backgroundColor = UIColor.brown

    btn.rx.tap
        .flatMap(selectedColor)
        .observeOn(MainScheduler.instance)
        .bind(to: view.rx.backgroundColor)
        .disposed(by: disposeBag)
  }

  func selectedColor() -> Observable<UIColor> {
    let vc = SecondViewController()
    present(vc, animated: true)
    return vc.selectedColor
  }
}

