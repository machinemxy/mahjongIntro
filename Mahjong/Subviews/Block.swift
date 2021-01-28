//
//  Block.swift
//  Mahjong
//
//  Created by 馬学渊 on 2021/01/28.
//

import SwiftUI

struct Block: View {
    var name: String
    var tileNames: [String] {
        name.components(separatedBy: ",")
    }
    
    var body: some View {
        HStack {
            ForEach(tileNames, id: \.self) { tileName in
                Tile(name: tileName)
            }
        }.padding()
    }
}

struct Block_Previews: PreviewProvider {
    static var previews: some View {
        Block(name: "s1,s2,s3")
            .previewLayout(.fixed(width: 300, height: 300))
    }
}
