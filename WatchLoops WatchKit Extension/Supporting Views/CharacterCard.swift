//
//  CharacterCard.swift
//  WatchLoops WatchKit Extension
//
//  Created by Devin Sova on 7/4/20.
//  Copyright © 2020 Devin Sova. All rights reserved.
//

import SwiftUI

struct CharacterCard: View {
    var character: Character
    var body: some View {
        NavigationLink(destination: MoveList(character: character)) {
            VStack(alignment: .leading, spacing: 0.5) {
                Text(character.Name).font(.system(size: 15)).bold()
            }
            .cornerRadius(10)
            .padding([.all])
        }
    }
}

struct CharacterCard_Previews: PreviewProvider {
    static var previews: some View {
        CharacterCard(character: samplecharacter)
    }
}
