//
//  FieldView.swift
//  WatchLoops WatchKit Extension
//
//  Created by Devin Sova on 5/25/20.
//  Copyright © 2020 Devin Sova. All rights reserved.
//

import SwiftUI

struct FieldView: View {
    var key: String
    var value: String
    var body: some View {
        HStack {
            Text(key + ":")
                .bold()
            Text(value)
                .font(.caption)
                .foregroundColor(.gray)
        }
    }
}

struct FieldView_Previews: PreviewProvider {
    static var previews: some View {
        FieldView(key: "On Hit", value: "+3")
    }
}
