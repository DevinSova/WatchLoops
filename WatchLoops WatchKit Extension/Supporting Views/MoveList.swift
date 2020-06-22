//
//  MoveList.swift
//  WatchLoops WatchKit Extension
//
//  Created by Devin Sova on 5/3/20.
//  Copyright © 2020 Devin Sova. All rights reserved.
//

import SwiftUI

struct MoveList: View {
    var moves: [Move]
    var body: some View {
        ScrollView {
            MoveView(move: samplecharacter.Moves[0], version: samplecharacter.Moves[0].Versions[0]).padding()
            //MoveView(move: samplecharacter.moves[0], version: samplecharacter.moves[0].Versions[1]).padding()
            //MoveView(move: samplecharacter.moves[0], version: samplecharacter.moves[0].Versions[2]).padding()
        }
        .navigationBarTitle(samplecharacter.Name)
    }
}

struct MoveList_Previews: PreviewProvider {
    static var previews: some View {
        MoveList(moves: [])
    }
}
