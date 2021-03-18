//
//  HeaderView.swift
//  Mahjong
//
//  Created by Ma Xueyuan on 2021/03/18.
//

import SwiftUI

struct HeaderView: View {
    let content: String
    
    var body: some View {
        Text(content)
            .font(.subheadline)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(content: "aaa")
    }
}
