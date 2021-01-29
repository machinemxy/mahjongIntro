//
//  Hand.swift
//  Mahjong
//
//  Created by 馬学渊 on 2021/01/29.
//

import SwiftUI

struct Hand: View {
    var array: [String]
    
    var body: some View {
        HStack(spacing: 4) {
            ForEach(array, id: \.self) { name in
                Block(name: name)
            }
        }.padding(4)
    }
}

struct Hand_Previews: PreviewProvider {
    static var previews: some View {
        Hand(array: ["m1,m2,m3", "m4,m5,m6", "m7,m8,m9", "j1,j1,j1", "j7,j7,nu"])
    }
}
