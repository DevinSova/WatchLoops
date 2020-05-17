//
//  Field.swift
//  WatchLoops WatchKit Extension
//
//  Created by Devin Sova on 5/16/20.
//  Copyright © 2020 Devin Sova. All rights reserved.
//

import SwiftUI

struct Field: View {
    var name: String
    var value: String
    var body: some View {
        HStack {
            Text(name + ":")
                .bold()
            Text(value)
                .font(.caption)
                .foregroundColor(.gray)
        }
        
    }
}

struct Field_Previews: PreviewProvider {
    static var previews: some View {
        Field(name: "On Hit", value: "+3")
    }
}
