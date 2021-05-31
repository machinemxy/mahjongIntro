//
//  Tile.swift
//  Mahjong
//
//  Created by Ma Xueyuan on 2021/05/31.
//

import Foundation

struct Tile: Identifiable {
    let kind: String
    let number: Int
    var id: String {
        "\(kind)\(number)"
    }
}
