//
//  MoveList.swift
//  WatchLoops WatchKit Extension
//
//  Created by Devin Sova on 5/3/20.
//  Copyright © 2020 Devin Sova. All rights reserved.
//

import SwiftUI

struct MoveList: View {
    var character: Character
    var body: some View {
        List {
            ForEach(character.Moves, id:\.self) { move in
                MoveCard(move: move)
            }
        }
        .navigationBarTitle(character.Name)
    }
}

struct MoveList_Previews: PreviewProvider {
    static var previews: some View {
        MoveList(character: samplecharacter)
    }
}
