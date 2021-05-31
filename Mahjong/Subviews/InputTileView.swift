//
//  InputTileView.swift
//  Mahjong
//
//  Created by Ma Xueyuan on 2021/05/31.
//

import SwiftUI

struct InputTileView: View {
    let tile: Tile
    var tileImageName: String {
        if tile.kind == "j" && tile.number >= 8 {
            return "nu"
        } else {
            return tile.id
        }
    }
    
    var body: some View {
        Image(tileImageName)
            .resizable()
            .scaledToFit()
    }
}

struct InputTileView_Previews: PreviewProvider {
    static var previews: some View {
        InputTileView(tile: Tile(kind: "j", number: 1))
            .previewLayout(.fixed(width: 300, height: 300))
            .padding()
    }
}
