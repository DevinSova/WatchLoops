//
//  MoveView.swift
//  WatchLoops WatchKit Extension
//
//  Created by Devin Sova on 2/18/20.
//  Copyright © 2020 Devin Sova. All rights reserved.
//

import SwiftUI

struct MoveView: View {
    var move: Move
    var version: [String: String]
    
    var body: some View {
        NavigationLink(destination: MoveDescription(images: move.ImageURLs, description: version["Description"]!)) {
            VStack(alignment: .leading) {
                ForEach(version.sorted(by: >), id:\.key) { key, value in
                    FieldView(key: key, value: value)
                }
            }
        }
        //TODO: Fuck the buttons and do a tap on card to view 90% view of pic followed by desc??
    }
}

struct MoveView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MoveView(move: samplecharacter.Moves[0], version: samplecharacter.Moves[0].Versions[0])
                .previewDevice("Apple Watch Series 4 - 44mm")
            MoveView(move: samplecharacter.Moves[1], version: samplecharacter.Moves[1].Versions[0])
                .previewDevice("Apple Watch Series 2 - 38mm")
        }
    }
}
