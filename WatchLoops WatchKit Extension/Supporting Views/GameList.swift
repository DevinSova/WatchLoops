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
                NavigationLink(destination: CharacterList(characters: charactersFromGame(game: .bbtag))) {
                    Text("BBTag")
                }
            }
            HStack {
                NavigationLink(destination: CharacterList(characters: charactersFromGame(game: .dbfz))) {
                    Text("DBFZ")
                }
                NavigationLink(destination: CharacterList(characters: charactersFromGame(game: .gbvs))) {
                    Text("GBVS")
                }
            }
            HStack {
                NavigationLink(destination: CharacterList(characters: charactersFromGame(game: .ggxrdrev2))) {
                    Text("GGXRD")
                }
                NavigationLink(destination: CharacterList(characters: charactersFromGame(game: .p4au))) {
                    Text("P4AU")
                }
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
    }
}

struct GameList_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            GameList()
                .previewDevice("Apple Watch Series 4 - 44mm")
            GameList()
                .previewDevice("Apple Watch Series 2 - 38mm")
        }
    }
}
