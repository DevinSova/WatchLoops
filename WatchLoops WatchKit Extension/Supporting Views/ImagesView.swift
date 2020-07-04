//
//  ImagesView.swift
//  WatchLoops WatchKit Extension
//
//  Created by Devin Sova on 6/27/20.
//  Copyright © 2020 Devin Sova. All rights reserved.
//

import SwiftUI
import URLImage
// TODO: Change placeholder image
struct ImagesView: View {
    var imageURLs: [URL]
    var body: some View {
        VStack(alignment: .center, spacing: 2.0) {
            ForEach(imageURLs, id:\.self) { imageURL in
                URLImage(imageURL, placeholder: Image(systemName: "circle")).scaledToFit() //TODO: Update placeholder
            }
        }.scaledToFit()
    }
}

struct ImagesView_Previews: PreviewProvider {
    static var previews: some View {
        ImagesView(imageURLs: samplecharacter.Moves[0].Versions[0].ImageURLs!)
    }
}
