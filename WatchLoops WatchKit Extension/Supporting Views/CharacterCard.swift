//
//  CharacterCard.swift
//  WatchLoops WatchKit Extension
//
//  Created by Devin Sova on 7/4/20.
//  Copyright © 2020 Devin Sova. All rights reserved.
//

import SwiftUI
import URLImage

struct CharacterCard: View {
    var character: Character
    var body: some View {
        NavigationLink(destination: MoveList(character: character)) {
            VStack(alignment: .leading, spacing: 0.5) {
                HStack {
                    if character.IconURL != nil {
                        URLImage(
                            character.IconURL!,
                             delay: 0.25,
                             content:  {
                                 $0.image
                                    .aspectRatio(contentMode: .fit)
                             })
                    }
                    Text(character.Name).font(.system(size: 15)).bold()
                }
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
