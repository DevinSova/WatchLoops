//
//  MoveDescription.swift
//  WatchLoops WatchKit Extension
//
//  Created by Devin Sova on 5/16/20.
//  Copyright © 2020 Devin Sova. All rights reserved.
//

import SwiftUI

struct MoveDescription: View {
    var description: String
    var body: some View {
        ScrollView {
            Text(description)
            .font(.body)
        }
    }
}

struct MoveDescription_Previews: PreviewProvider {
    static var previews: some View {
        MoveDescription(description: samplecharacter.Moves[0].Versions[0]["Description"] ?? "Description not available")
    }
}
