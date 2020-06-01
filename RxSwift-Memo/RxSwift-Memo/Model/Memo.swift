//
//  Memo.swift
//  RxSwift-Memo
//
//  Created by once on 2020/06/01.
//  Copyright © 2020 once. All rights reserved.
//

import Foundation

struct Memo: Equatable {
    var content: String
    var insertDate: Date
    var identity: String
    
    init(content: String, insertDate: Date = Date()) {
        self.content = content
        self.insertDate = insertDate
        self.identity = "\(insertDate.timeIntervalSinceReferenceDate)"
    }
}
