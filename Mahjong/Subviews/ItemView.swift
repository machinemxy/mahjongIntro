//
//  ItemView.swift
//  Mahjong
//
//  Created by Ma Xueyuan on 2021/03/18.
//

import SwiftUI

struct ItemView: View {
    let ron: String
    let sp: String
    
    var body: some View {
        VStack {
            Text(ron).font(.footnote)
            Text(sp).font(.caption2)
        }
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(ron: "8000", sp: "2000/4000")
    }
}
