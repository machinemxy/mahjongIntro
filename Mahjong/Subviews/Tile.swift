//
//  Tile.swift
//  Mahjong
//
//  Created by 馬学渊 on 2021/01/28.
//

import SwiftUI

struct Tile: View {
    var name: String
    
    var body: some View {
        Image(name)
            .resizable()
            .scaledToFit()
    }
}

struct Tile_Previews: PreviewProvider {
    static var previews: some View {
        Tile(name: "j1")
            .previewLayout(.fixed(width: 300, height: 300))
            .padding()
    }
}
