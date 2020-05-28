//
//  Character.swift
//  WatchLoops WatchKit Extension
//
//  Created by Devin Sova on 2/18/20.
//  Copyright © 2020 Devin Sova. All rights reserved.
//

import Foundation

struct Character {
    var name: String
    var game: Game
    var description: String
    var moves: [Move]
    
    init() {
        self.name = "UNKNOWN"
        self.game = .unknown
        self.description = "UNKNOWN"
        self.moves = []
    }
    
    init(name: String, game: Game, description: String, moves: [Move]) {
        self.name = name
        self.game = game
        self.description = description
        self.moves = moves
    }
}

enum Game: String {
    case unknown = "UNKNOWN"
    case p4au = "P4AU"
    case dbfz = "DBFZ"
    case gbvs = "GBVS"
    case bbtag = "BBTAG"
    case ggxrdrev2 = "GGXRDREV2"
    case bbcf = "BBCF"
    case uniclr = "UNICLR"
}
