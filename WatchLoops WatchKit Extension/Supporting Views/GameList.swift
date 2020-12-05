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
        List {
            ForEach(Game.allCases, id: \.self) { game in
                if game != Game.unknown {
                    NavigationLink(destination: CharacterList(characters: charactersFromGame(game: game))) {
                        Image(game.rawValue)
                            .resizable()
                            .scaledToFit()
                    }
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
