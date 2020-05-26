//
//  Move.swift
//  WatchLoops WatchKit Extension
//
//  Created by Devin Sova on 2/18/20.
//  Copyright © 2020 Devin Sova. All rights reserved.
//

import Foundation

struct Move {
    var name: String
    var comment: String?
    var versions: [Version]
    var image: String
}

struct Version {
    var id = UUID()
    var fields: [Field]
}

struct Field {
    var id = UUID()
    var key: String
    var value: String
}
