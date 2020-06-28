//
//  Move.swift
//  WatchLoops WatchKit Extension
//
//  Created by Devin Sova on 2/18/20.
//  Copyright © 2020 Devin Sova. All rights reserved.
//

import Foundation

struct Move : Codable, Hashable {
    var Name: String
    var Comment: String?
    var Versions: [Version]

    init() {
        self.Name = "UNKNOWN"
        self.Comment = "UNKNOWN"
        self.Versions = []
        //TODO: "Change to be a default image and URL Field
    }
    
    init(Name: String, Comment: String?, ImageURLs: [URL], Versions: [Version], imageUrl: String) {
        self.Name = Name
        self.Comment = Comment
        self.Versions = Versions
    }
}

typealias Attributes = [String: String]

struct Version: Codable, Hashable {
    var Attributes: Attributes
    var Description: String
    var ImageURLs: [URL]?
}
