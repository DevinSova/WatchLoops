//
//  AttributesView.swift
//  WatchLoops WatchKit Extension
//
//  Created by Devin Sova on 6/27/20.
//  Copyright © 2020 Devin Sova. All rights reserved.
//

import SwiftUI

struct AttributesView: View {
    var attributes: Attributes
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(attributes.sorted(by: <), id:\.key) { key, value in
                FieldView(key: key, value: value)
            }
        }
    }
}

struct AttributesView_Previews: PreviewProvider {
    static var previews: some View {
        AttributesView(attributes: samplecharacter.Moves[0].Versions[0].Attributes)
    }
}
