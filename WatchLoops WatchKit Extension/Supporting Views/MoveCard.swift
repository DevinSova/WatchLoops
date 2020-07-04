//
//  MoveCard.swift
//  WatchLoops WatchKit Extension
//
//  Created by Devin Sova on 6/27/20.
//  Copyright © 2020 Devin Sova. All rights reserved.
//

import SwiftUI

struct MoveCard: View {
    var move: Move
    var body: some View {
        NavigationLink(destination: MoveView(move: move)) {
            VStack(alignment: .leading, spacing: 0.5) {
                Text(move.Name).font(.system(size: 15)).bold()
                if move.Comment != nil {
                    Text(move.Comment!).font(.caption)
                }
                
            }
            .cornerRadius(10)
            .padding([.all])
        }
    }
}

struct MoveCard_Previews: PreviewProvider {
    static var previews: some View {
        MoveCard(move: samplecharacter.Moves[0])
    }
}
