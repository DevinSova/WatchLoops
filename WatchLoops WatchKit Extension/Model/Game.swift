//
//  Game.swift
//  WatchLoops WatchKit Extension
//
//  Created by Devin Sova on 7/3/20.
//  Copyright © 2020 Devin Sova. All rights reserved.
//

import Foundation

enum Game: String, Codable, CaseIterable {
    case unknown = "UNKNOWN"
    case dbfz = "DBFZ"
    case ggxrdrev2 = "GGXRDREV2"
    case gbvs = "GBVS"
    case bbtag = "BBTAG"
    case bbcf = "BBCF"
    case p4au = "P4AU"
}
