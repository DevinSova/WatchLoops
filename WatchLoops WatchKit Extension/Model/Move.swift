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
    var comment: String
    var versions: [Version]
    var imageUrl: String
    
    init() {
        self.name = "UNKNOWN"
        self.comment = "UNKNOWN"
        self.versions = []
        self.imageUrl = "UNKNOWN"
        #warning("Change to be a default image and URL Field")
    }
    
    init(name: String, comment: String, versions: [Version], imageUrl: String) {
        self.name = name
        self.comment = comment
        self.versions = versions
        self.imageUrl = imageUrl
    }
}

struct Version {
    var id = UUID()
    var fields: [Field]
    var description: String
    
    init() {
        self.fields = []
        self.description = "UNKNOWN"
    }
    
    init(fields: [Field], description: String) {
        self.fields = fields
        self.description = description
    }
}

struct Field {
    var id = UUID()
    var order: Int
    var key: String
    var value: String
    
    init() {
        self.order = -1
        self.key = "UNKOWN"
        self.value = "UNKNOWN"
    }
    
    init(order: Int, key: String, value: String) {
        self.order = order
        self.key = key
        self.value = value
    }
}
