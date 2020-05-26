//
//  ContentView.swift
//  WatchLoops WatchKit Extension
//
//  Created by Devin Sova on 2/18/20.
//  Copyright © 2020 Devin Sova. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MoveView(move: samplecharacter.moves[0], version: samplecharacter.moves[0].versions[0])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
