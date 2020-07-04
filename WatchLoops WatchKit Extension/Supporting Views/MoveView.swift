//
//  MoveView.swift
//  WatchLoops WatchKit Extension
//
//  Created by Devin Sova on 2/18/20.
//  Copyright © 2020 Devin Sova. All rights reserved.
//

import SwiftUI
import URLImage
//TODO: Change sorting to custom method
struct MoveView: View {
    var move: Move
    var body: some View {
        ScrollView {
            Text(move.Name).font(.system(size: 20)).bold()
            if move.Comment != nil {
                Text(move.Comment!).font(.system(size: 14)).foregroundColor(.gray)
            }
            ForEach(move.Versions, id:\.self) { version in
                VStack(alignment: .leading, spacing: 5.0) {
                    AttributesView(attributes: version.Attributes)
                    Text(version.Description).lineLimit(nil).font(.caption)
                    if version.ImageURLs != nil {
                        ImagesView(imageURLs: version.ImageURLs!)
                    }
                    if version != self.move.Versions.last {
                        Divider()
                    }
                }.padding([.top, .bottom], 4.0)
            }
        }.navigationBarTitle(move.Name)
    }
}

struct MoveView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MoveView(move: samplecharacter.Moves[0])
                .previewDevice("Apple Watch Series 4 - 44mm")
            MoveView(move: samplecharacter.Moves[1])
                .previewDevice("Apple Watch Series 2 - 38mm")
        }
    }
}
