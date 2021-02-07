//
//  Yaku.swift
//  Mahjong
//
//  Created by 馬学渊 on 2021/01/30.
//

import Foundation

struct Yaku: Codable {
    let title: String
    let marks: [String]
    let description: String
    let blocks: [String]?
}
