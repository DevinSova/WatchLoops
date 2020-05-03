//
//  MoveView.swift
//  WatchLoops WatchKit Extension
//
//  Created by Devin Sova on 2/18/20.
//  Copyright © 2020 Devin Sova. All rights reserved.
//

import SwiftUI

struct MoveView: View {
    var image: Image  //TODO: Change to Move Model
    
    var body: some View {
        HStack(spacing: 0) {
            MoveImage(image: image)
            VStack {
                Text("Test")
            }
            //TODO: Change to horizontal scroll view for verisons
        }
        
    }
}

struct MoveView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MoveView(image: Image("chie"))
            MoveView(image: Image("chie5C"))
        }
    }
}
