//
//  Character.swift
//  WatchLoops WatchKit Extension
//
//  Created by Devin Sova on 2/18/20.
//  Copyright © 2020 Devin Sova. All rights reserved.
//

import Foundation

struct Character : Codable, Hashable {
    var Name: String
    var Game: Game
    var Attributes: String?
    var IconURL: URL?
    var PortraitURL: URL?
    var Moves: [Move]
    
    init() {
        self.Name = "UNKNOWN"
        self.Game = .unknown
        self.PortraitURL = nil
        self.IconURL = nil
        self.Attributes = nil
        self.Moves = []
    }
    
    init(Name: String, Game: Game, Attributes: String?, PortraitURL: URL?, IconURL: URL?, Moves: [Move]) {
        self.Name = Name
        self.Game = Game
        self.Attributes = Attributes
        self.PortraitURL = PortraitURL
        self.IconURL = IconURL
        self.Moves = Moves
    }
}
