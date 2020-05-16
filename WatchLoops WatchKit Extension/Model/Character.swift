//
//  Character.swift
//  WatchLoops WatchKit Extension
//
//  Created by Devin Sova on 2/18/20.
//  Copyright © 2020 Devin Sova. All rights reserved.
//

import Foundation

struct Character {
    var Name: String
    var Game: Games
    var Description: String
    var Moves: [Move]
}

enum Games: String {
    case P4AU = "P4AU"
    case DBFZ = "DBFZ"
    case GBVS = "GBVS"
    case BBTAG = "BBTAG"
    case GGXRDREV2 = "GGXRDREV2"
    case BBCF = "BBCF"
    case UNICLR = "UNICLR"
}

var samplemove = Move(Name: "5A", Comment: "Normal", Versions: [Version(Fields: [
        ("Version", "5A"),
        ("Damage", "180"),
        ("Guard", "All"),
        ("Startup", "5"),
        ("Active", "3"),
        ("Recovery", "6"),
        ("Frame Adv.", "0"),
        ("Attribute", "Body"),
        ("Description", "Short, slightly angled jab that hits crouchers. It's a staple pressure tool, since it's 0 block; input it as [4]A during pressure to block DP attempts after you recover.")
    ])]
)

var samplecharacter = Character(Name: "Chie Satonaka", Game: .P4AU, Description: "She's cool", Moves: [samplemove])
