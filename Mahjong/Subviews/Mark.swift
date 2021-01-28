//
//  Mark.swift
//  Mahjong
//
//  Created by 馬学渊 on 2021/01/28.
//

import SwiftUI

struct Mark: View {
    var name: String
    
    var body: some View {
        Text(name)
            .font(.headline)
            .padding(2)
            .border(Color.black, width: 2)
    }
}

struct Mark_Previews: PreviewProvider {
    static var previews: some View {
        Mark(name: "1翻")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
