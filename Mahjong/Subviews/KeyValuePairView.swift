//
//  KeyValuePairView.swift
//  Mahjong
//
//  Created by Ma Xueyuan on 2021/03/16.
//

import SwiftUI

struct KeyValuePairView: View {
    let key: String
    let value: String
    
    var body: some View {
        HStack {
            Text(key).font(.footnote)
            Spacer()
            Text(value).font(.footnote)
        }
    }
}

struct KeyValuePairView_Previews: PreviewProvider {
    static var previews: some View {
        KeyValuePairView(key: "abc", value: "100")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
