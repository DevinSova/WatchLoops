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
            moves[0]
            moves[1]
        }
        .navigationBarTitle("Chie Satonaka")
    }
}

struct MoveList_Previews: PreviewProvider {
    static var previews: some View {
        MoveList(moves: [
            MoveView(image: Image("chie")),
            MoveView(image: Image("chie5C"))
        ])
    }
}
