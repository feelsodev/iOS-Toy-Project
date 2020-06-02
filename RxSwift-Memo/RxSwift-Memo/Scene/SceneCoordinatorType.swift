//
//  SceneCoordinatorType.swift
//  RxSwift-Memo
//
//  Created by once on 2020/06/02.
//  Copyright © 2020 once. All rights reserved.
//

import Foundation
import RxSwift

protocol SceneCoordinatorType {
    @discardableResult
    func tansition(to scene: Scene, using style: TransitionStyle, animate: Bool)
     -> Completable
    
    @discardableResult
    func close(animated: Bool) -> Completable
}
