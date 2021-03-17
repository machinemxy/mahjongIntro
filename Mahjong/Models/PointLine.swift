//
//  PointLine.swift
//  Mahjong
//
//  Created by Ma Xueyuan on 2021/03/17.
//

import Foundation

struct PointLine: Identifiable, Codable {
    let id: String
    let items: [PointItem]
}
