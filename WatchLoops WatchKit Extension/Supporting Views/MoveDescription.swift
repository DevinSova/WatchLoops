//
//  MoveDescription.swift
//  WatchLoops WatchKit Extension
//
//  Created by Devin Sova on 5/16/20.
//  Copyright © 2020 Devin Sova. All rights reserved.
//

import SwiftUI
import URLImage

struct MoveDescription: View {
    var images: [URL]
    var description: String
    var body: some View {
        ScrollView {
            URLImage(images[0], placeholder: Image(systemName: "circle"))
            Text(description).font(.body).lineLimit(nil)
        }
    }
}

struct MoveDescription_Previews: PreviewProvider {
    static var previews: some View {
        MoveDescription(images: samplecharacter.Moves[0].ImageURLs, description: samplecharacter.Moves[0].Versions[0]["Description"] ?? "Description not available")
    }
}
