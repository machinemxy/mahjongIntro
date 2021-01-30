//
//  Tile.swift
//  Mahjong
//
//  Created by 馬学渊 on 2021/01/28.
//

import SwiftUI

struct TileView: View {
    var tile: String
    
    var body: some View {
        Image(tile)
            .resizable()
            .scaledToFit()
    }
}

struct Tile_Previews: PreviewProvider {
    static var previews: some View {
        TileView(tile: "j1")
            .previewLayout(.fixed(width: 300, height: 300))
            .padding()
    }
}
