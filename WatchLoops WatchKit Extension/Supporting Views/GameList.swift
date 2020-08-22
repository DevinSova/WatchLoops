//
//  GameList.swift
//  WatchLoops WatchKit Extension
//
//  Created by Devin Sova on 8/19/20.
//  Copyright © 2020 Devin Sova. All rights reserved.
//

import SwiftUI

struct GameList: View {
    var body: some View {
        VStack {
            HStack {
                NavigationLink(destination: CharacterList(characters: charactersFromGame(game: .bbcf))) {
                    Text("BBCF")
                }
                Spacer()
                NavigationLink(destination: CharacterList(characters: charactersFromGame(game: .bbtag))) {
                    Text("BBTag")
                }
            }
            HStack {
                NavigationLink(destination: CharacterList(characters: charactersFromGame(game: .dbfz))) {
                    Text("DBFZ")
                }
                Spacer()
                NavigationLink(destination: CharacterList(characters: charactersFromGame(game: .gbvs))) {
                    Text("GBVS")
                }
            }
            HStack {
                NavigationLink(destination: CharacterList(characters: charactersFromGame(game: .ggxrdrev2))) {
                    Text("GGXRD")
                }
                Spacer()
                NavigationLink(destination: CharacterList(characters: charactersFromGame(game: .p4au))) {
                    Text("P4AU")
                }
            }
        }
        .scaledToFill()
    }
}

struct GameList_Previews: PreviewProvider {
    static var previews: some View {
        GameList()
    }
}
