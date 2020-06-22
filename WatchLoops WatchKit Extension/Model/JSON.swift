//
//  JSON.swift
//  WatchLoops WatchKit Extension
//
//  Created by Devin Sova on 5/27/20.
//  Copyright © 2020 Devin Sova. All rights reserved.
//

import Foundation

func jsonToCharacter(forResource: String, withExtension: String) -> Character? {
    guard let mainUrl = Bundle.main.url(forResource: forResource, withExtension: withExtension) else { return nil }
    guard let jsonData = try? Data(contentsOf: mainUrl, options: .mappedIfSafe) else { return nil }
    let decoder = JSONDecoder()
    return try! decoder.decode(Character.self, from: jsonData)
}
