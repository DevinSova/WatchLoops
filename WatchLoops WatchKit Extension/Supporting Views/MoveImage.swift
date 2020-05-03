//
//  MoveImage.swift
//  WatchLoops WatchKit Extension
//
//  Created by Devin Sova on 2/18/20.
//  Copyright © 2020 Devin Sova. All rights reserved.
//

import SwiftUI

struct MoveImage: View {
    var image: Image
    
    var body: some View {
        VStack {
            image
            .resizable()
            .scaledToFit()
        }
    }
}

struct MoveImage_Previews: PreviewProvider {
    static var previews: some View {
        MoveImage(image: Image("chie"))
    }
}
