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
