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
            MoveView(Version: samplecharacter.Moves[0].Versions[0])
        }
        .navigationBarTitle("Chie Satonaka")
    }
}

struct MoveList_Previews: PreviewProvider {
    static var previews: some View {
        MoveList(moves: [])
    }
}
