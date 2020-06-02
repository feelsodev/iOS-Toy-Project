//
//  MemoListViewModel.swift
//  RxSwift-Memo
//
//  Created by once on 2020/05/31.
//  Copyright © 2020 once. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

class MemoListViewModel: CommonViewModel{
    var memoList: Observable<[Memo]>{
        return storage.memoList()
    }
}
