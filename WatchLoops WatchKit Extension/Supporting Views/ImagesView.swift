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
        VStack(alignment: .leading, spacing: 2.0) {
            ForEach(imageURLs, id:\.self) { imageURL in
                URLImage(imageURL,
                    placeholder: Image(systemName: "circle"),
                    content:  {
                        $0.image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                })
            }
        }
    }
}

struct ImagesView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ImagesView(imageURLs: samplecharacter.Moves[2].Versions[0].ImageURLs!)
                .previewDevice("Apple Watch Series 4 - 44mm")
            ImagesView(imageURLs: samplecharacter.Moves[2].Versions[0].ImageURLs!)
                .previewDevice("Apple Watch Series 2 - 38mm")
        }
    }
}
