//
//  MoveView.swift
//  WatchLoops WatchKit Extension
//
//  Created by Devin Sova on 2/18/20.
//  Copyright © 2020 Devin Sova. All rights reserved.
//

import SwiftUI

struct MoveView: View {
    var Version: Version
    
    var body: some View {
        HStack {
            VStack {
                Field(name: Version.Fields[0].0, value: Version.Fields[0].1)
                Field(name: Version.Fields[1].0, value: Version.Fields[1].1)
                Field(name: Version.Fields[2].0, value: Version.Fields[2].1)
                Field(name: Version.Fields[3].0, value: Version.Fields[3].1)
            }
            VStack {
                Field(name: Version.Fields[4].0, value: Version.Fields[4].1)
                Field(name: Version.Fields[5].0, value: Version.Fields[5].1)
                Field(name: Version.Fields[6].0, value: Version.Fields[6].1)
                Field(name: Version.Fields[7].0, value: Version.Fields[7].1)
            }
        }
        //TODO: Change to horizontal scroll view for verisons
    }
}

struct MoveView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MoveView(Version: samplecharacter.Moves[0].Versions[0])
                .previewDevice("Apple Watch Series 4 - 44mm")
            MoveView(Version: samplecharacter.Moves[0].Versions[0])
                .previewDevice("Apple Watch Series 2 - 38mm")
        }
    }
}
