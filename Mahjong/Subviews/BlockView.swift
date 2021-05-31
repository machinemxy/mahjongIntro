//
//  Block.swift
//  Mahjong
//
//  Created by 馬学渊 on 2021/01/28.
//

import SwiftUI

struct BlockView: View {
    let block: String
    var tileNames: [String] {
        block.components(separatedBy: ",")
    }
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(tileNames, id: \.self) { tileName in
                TileView(tile: tileName)
            }
        }
    }
}

struct BlockView_Previews: PreviewProvider {
    static var previews: some View {
        BlockView(block: "s1,s2,s3")
            .previewLayout(.fixed(width: 300, height: 300))
    }
}
