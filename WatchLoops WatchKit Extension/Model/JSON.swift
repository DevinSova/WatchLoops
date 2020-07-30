//
//  JSON.swift
//  WatchLoops WatchKit Extension
//
//  Created by Devin Sova on 5/27/20.
//  Copyright © 2020 Devin Sova. All rights reserved.
//

import Foundation
import UIKit

func charactersFromGame(game: Game) -> [Character] {
    guard let asset = NSDataAsset(name: game.rawValue) else { print("not found"); return [] }
    return try! JSONDecoder().decode([Character].self, from: asset.data)
}
