//
//  CommonViewModel.swift
//  RxSwift-Memo
//
//  Created by once on 2020/06/02.
//  Copyright © 2020 once. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

class CommonViewModel: NSObject{
    let title: Driver<String>
    let sceneCoordinator: SceneCoordinatorType
    let storage: MemoStorageType
    
    init(title: String, sceneCoordinator: SceneCoordinatorType, storage: MemoStorageType){
        self.title = Observable.just(title).asDriver(onErrorJustReturn: "")
        self.sceneCoordinator = sceneCoordinator
        self.storage = storage
    }
}
