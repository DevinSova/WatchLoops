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
    var version: Version
    
    var body: some View {
        ScrollView {
            HStack {
                VStack(alignment: .leading) {
                    ForEach(version.fields, id: \.id) { field in
                        FieldView(field: field)
                    }
                }

                VStack {
                    NavigationLink(destination: MoveDescription(description: version.description)) {
                        Image(uiImage: UIImage(
                            systemName: "text.bubble.fill",
                            withConfiguration: UIImage.SymbolConfiguration(scale: .medium))
                            ?? UIImage())
                    }.clipShape(Circle())

                    NavigationLink(destination: MoveImage(image: Image(move.imageUrl))) {
                        Image(uiImage: UIImage(
                            systemName: "person.fill",
                            withConfiguration: UIImage.SymbolConfiguration(scale: .medium))
                            ?? UIImage())
                    }.clipShape(Circle())

                    Button(action: {}) {
                        Image(uiImage: UIImage(
                            systemName: "rectangle.fill",
                            withConfiguration: UIImage.SymbolConfiguration(scale: .medium))
                            ?? UIImage())
                    }
                    .clipShape(Circle())
                }
                .scaledToFit()
            }
            .scaledToFill()
            //TODO: Change to horizontal scroll view for verisons
        }
    }
}

struct MoveView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MoveView(move: samplecharacter.moves[0], version: samplecharacter.moves[0].versions[0])
                .previewDevice("Apple Watch Series 4 - 44mm")
            MoveView(move: samplecharacter.moves[1], version: samplecharacter.moves[1].versions[0])
                .previewDevice("Apple Watch Series 2 - 38mm")
        }
    }
}
