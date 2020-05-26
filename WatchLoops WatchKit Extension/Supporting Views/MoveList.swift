//
//  MoveList.swift
//  WatchLoops WatchKit Extension
//
//  Created by Devin Sova on 5/3/20.
//  Copyright © 2020 Devin Sova. All rights reserved.
//

import SwiftUI

struct MoveList: View {
    var moves: [MoveView]
    var body: some View {
        List {
            MoveView(move: samplecharacter.moves[0], version: samplecharacter.moves[0].versions[0])
        }
        .navigationBarTitle("Chie Satonaka")
    }
}

struct MoveList_Previews: PreviewProvider {
    static var previews: some View {
        MoveList(moves: [])
    }
}
