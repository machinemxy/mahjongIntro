//
//  TableCornerView.swift
//  Mahjong
//
//  Created by Ma Xueyuan on 2021/03/17.
//

import SwiftUI

struct TableCornerView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("　Han").font(.subheadline)
            Text("Fu").font(.subheadline)
        }
    }
}

struct TableCornerView_Previews: PreviewProvider {
    static var previews: some View {
        TableCornerView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
