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
    var Versions: [[String: String]]
    //var imageUrl: String
    
    init() {
        self.Name = "UNKNOWN"
        self.Comment = "UNKNOWN"
        self.Versions = []
        //self.imageUrl = "UNKNOWN"
        #warning("Change to be a default image and URL Field")
    }
    
    init(Name: String, Comment: String?, Versions: [[String: String]], imageUrl: String) {
        self.Name = Name
        self.Comment = Comment
        self.Versions = Versions
        //self.imageUrl = imageUrl
    }
}
