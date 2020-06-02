//
//  TransitionModel.swift
//  RxSwift-Memo
//
//  Created by once on 2020/06/02.
//  Copyright © 2020 once. All rights reserved.
//

import Foundation

enum TransitionStyle{
    case root
    case push
    case modal
}

enum TransitionError{
    case navigationControllerMissing
    case cannotPop
    case unknown
}
