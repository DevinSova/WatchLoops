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
}

enum Game: String {
    case P4AU = "P4AU"
    case DBFZ = "DBFZ"
    case GBVS = "GBVS"
    case BBTAG = "BBTAG"
    case GGXRDREV2 = "GGXRDREV2"
    case BBCF = "BBCF"
    case UNICLR = "UNICLR"
}

var samplemove = Move(name: "5A", comment: "Normal", versions: [Version(fields: [
    Field(key: "Version", value: "5A"),
    Field(key: "Damage", value: "180"),
    Field(key: "Guard", value: "All"),
    Field(key: "Startup", value: "5"),
    Field(key: "Active", value: "3"),
    Field(key: "Recovery", value: "6"),
    Field(key: "Frame Adv.", value: "0"),
    Field(key: "Attribute", value: "Body"),
    Field(key: "Description", value: "Short, slightly angled jab that hits crouchers. It's a staple pressure tool, since it's 0 block; input it as [4]A during pressure to block DP attempts after you recover.")
])], image: "chie"
)

var samplecharacter = Character(name: "Chie Satonaka", game: .P4AU, description: "She's cool", moves: [samplemove])
