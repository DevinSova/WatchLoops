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
            ForEach(samplecharacter.Moves, id:\.Name) { move in
                ForEach(move.Versions, id:\.self) { version in
                    MoveView(move: move, version: version).padding()
                }
            }
        }
        .navigationBarTitle(samplecharacter.Name)
    }
}

struct MoveList_Previews: PreviewProvider {
    static var previews: some View {
        MoveList(moves: [])
    }
}
