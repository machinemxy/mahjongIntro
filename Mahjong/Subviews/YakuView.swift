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
            
            if let blocks = yaku.blocks {
                HandView(blocks: blocks)
            }
        }
    }
}

struct YakuView_Previews: PreviewProvider {
    static var previews: some View {
        let yaku = Yaku(title: "Big three dragon", marks: ["yakuman", "open same"], description: "A triplet or quad of each type of dragon tile.", blocks: ["m5,m6,m7", "j5,j5,j5", "j6,j6,j6", "j7,j7,j7", "s4,s4,nu"])
        return YakuView(yaku: yaku).previewLayout(.sizeThatFits)
    }
}
