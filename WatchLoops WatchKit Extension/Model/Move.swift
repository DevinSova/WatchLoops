//
//  Move.swift
//  WatchLoops WatchKit Extension
//
//  Created by Devin Sova on 2/18/20.
//  Copyright © 2020 Devin Sova. All rights reserved.
//

import Foundation

struct Move : Codable {
    var Name: String
    var Comment: String?
    var ImageURLs: [URL]
    var Versions: [[String: String]]
    //var imageUrl: String
    
    init() {
        self.Name = "UNKNOWN"
        self.Comment = "UNKNOWN"
        self.ImageURLs = []
        self.Versions = []
        //self.imageUrl = "UNKNOWN"
        //TODO: "Change to be a default image and URL Field
    }
    
    init(Name: String, Comment: String?, ImageURLs: [URL], Versions: [[String: String]], imageUrl: String) {
        self.Name = Name
        self.Comment = Comment
        self.ImageURLs = ImageURLs
        self.Versions = Versions
        //self.imageUrl = imageUrl
    }
}
