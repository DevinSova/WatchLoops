//
//  CharacterList.swift
//  WatchLoops WatchKit Extension
//
//  Created by Devin Sova on 7/4/20.
//  Copyright © 2020 Devin Sova. All rights reserved.
//

import SwiftUI

struct CharacterList: View {
    var characters: [Character]
    var body: some View {
        List {
            ForEach(characters, id:\.self) { character in
                CharacterCard(character: character)
            }
        }
    }
}

struct CharacterList_Previews: PreviewProvider {
    static var previews: some View {
        CharacterList(characters: [samplecharacter])
    }
}
