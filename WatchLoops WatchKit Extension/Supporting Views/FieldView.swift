//
//  FieldView.swift
//  WatchLoops WatchKit Extension
//
//  Created by Devin Sova on 5/25/20.
//  Copyright © 2020 Devin Sova. All rights reserved.
//

import SwiftUI

struct FieldView: View {
    var field: Field
    var body: some View {
        HStack {
            Text(field.key + ":")
                .bold()
            Text(field.value)
                .font(.caption)
                .foregroundColor(.gray)
        }
    }
}

struct FieldView_Previews: PreviewProvider {
    static var previews: some View {
        FieldView(field: Field(key: "On Hit", value: "+3"))
    }
}
