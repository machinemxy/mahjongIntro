//
//  YakuView.swift
//  Mahjong
//
//  Created by 馬学渊 on 2021/01/30.
//

import SwiftUI

struct YakuView: View {
    let yaku: Yaku
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack(spacing: 4) {
                Text(yaku.title).font(.headline)
                Spacer()
                ForEach(yaku.marks, id: \.self) { mark in
                    MarkView(mark: mark)
                }
            }
            
            Text(yaku.description).font(.footnote)
                .layoutPriority(1)
            
            if let blocks = yaku.blocks {
                HandView(blocks: blocks)
            }
        }
    }
}

struct YakuView_Previews: PreviewProvider {
    static var previews: some View {
        let yakus: [Yaku] = Bundle.main.decode("yaku_en.json")
        return YakuView(yaku: yakus[3]).previewLayout(.sizeThatFits)
    }
}
