//
//  Character.swift
//  WatchLoops WatchKit Extension
//
//  Created by Devin Sova on 2/18/20.
//  Copyright © 2020 Devin Sova. All rights reserved.
//

import Foundation

struct Character : Codable {
    var Name: String
    var Game: Game
    var Attributes: String
    var ImageURL : URL?
    var Moves: [Move]
    
    init() {
        self.Name = "UNKNOWN"
        self.Game = .unknown
        self.ImageURL = nil
        self.Attributes = "UNKNOWN"
        self.Moves = []
    }
    
    init(Name: String, Game: Game, Attributes: String, ImageURL: URL?, Moves: [Move]) {
        self.Name = Name
        self.Game = Game
        self.Attributes = Attributes
        self.ImageURL = ImageURL
        self.Moves = Moves
    }
}

enum Game: String, Codable {
    case unknown = "UNKNOWN"
    case p4au = "P4AU"
    case dbfz = "DBFZ"
    case gbvs = "GBVS"
    case bbtag = "BBTAG"
    case ggxrdrev2 = "GGXRDREV2"
    case bbcf = "BBCF"
    case uniclr = "UNICLR"
}

// TODO: Create Sorter of fields for each game! Have it be it's own dict where you pass the game in
