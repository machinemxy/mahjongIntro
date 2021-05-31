//
//  Mark.swift
//  Mahjong
//
//  Created by 馬学渊 on 2021/01/28.
//

import SwiftUI

struct MarkView: View {
    let mark: String
    
    var body: some View {
        Text(mark)
            .font(.caption)
            .padding(2)
            .border(Color.primary, width: 1)
    }
}

struct MarkView_Previews: PreviewProvider {
    static var previews: some View {
        MarkView(mark: "1翻")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
