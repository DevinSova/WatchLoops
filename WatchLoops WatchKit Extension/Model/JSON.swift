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
    let jsonWithArrayRoot = try? JSONSerialization.jsonObject(with: jsonData, options: [])

    var fields = [Field]()
    var versions = [Version]()
    var moves = [Move]()
    
    if let arrayOfJsonMoves = jsonWithArrayRoot as? [[String: Any]] {
        for jsonMove in arrayOfJsonMoves {
            let name = jsonMove["Name"] as? String ?? ""
            let comment = jsonMove["Comment"] as? String ?? ""
            if let jsonVersions = jsonMove["Versions"] as? [[String: String]] {
                for jsonVersion in jsonVersions {
                    for jsonField in jsonVersion {
                        fields.append(Field(order: 0, key: jsonField.key, value: jsonField.value))
                    }
                    versions.append(Version(fields: fields, description: "description"))
                    fields.removeAll()
                }
            } else {

            }
            moves.append(Move(name: name, comment: comment, versions: versions, imageUrl: ""))
            versions.removeAll()
        }
    } else {
        return nil
    }

    return Character(name: "test", game: .bbcf, description: "", moves: moves)
}
