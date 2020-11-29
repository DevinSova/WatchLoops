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

struct Version: Codable, Hashable {
    var Attributes: Attributes
    var Description: String?
    var ImageURLs: [URL]?
}

typealias Attributes = [String: String]

let attributeSortDict = [
    "Version": 0,
    "Damage": 1,
    "Guard": 2,
    "Smash": 3,
    "Startup": 4,
    "Active": 5,
    "Recovery": 6,
    "On Block": 7,
    "On Hit": 8,
    "Frame Adv.": 9, //TODO Sometimes with or without the peroid
    "Attribute": 10,
    "Inv.": 11,
]

// TODO: Create Sorter of fields for each game! Have it be it's own dict where you pass the game in
func attributeSortOrder(name: String) -> Int {
    attributeSortDict[name] ?? 0
}

