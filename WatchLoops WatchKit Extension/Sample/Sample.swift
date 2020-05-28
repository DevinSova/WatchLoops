//
//  Sample.swift
//  WatchLoops WatchKit Extension
//
//  Created by Devin Sova on 5/27/20.
//  Copyright © 2020 Devin Sova. All rights reserved.
//

import Foundation

var samplemove = Move(name: "5A", comment: "Normal", versions: [Version(fields: [
    Field(order: 0, key: "Version", value: "5A"),
    Field(order: 1, key: "Damage", value: "180"),
    Field(order: 2, key: "Guard", value: "All"),
    Field(order: 3, key: "Startup", value: "5"),
    Field(order: 4, key: "Active", value: "3"),
    Field(order: 5, key: "Recovery", value: "6"),
    Field(order: 6, key: "Frame Adv.", value: "0"),
    Field(order: 7, key: "Attribute", value: "Body")
], description: "Short, slightly angled jab that hits crouchers. It's a staple pressure tool, since it's 0 block; input it as [4]A during pressure to block DP attempts after you recover.")], imageUrl: "chie"
)

//var samplecharacter = Character(name: "Chie Satonaka", game: .p4au, description: "She's cool", moves: [samplemove])

var samplecharacter = jsonToCharacter(forResource: "Sample", withExtension: "json") ?? Character()
