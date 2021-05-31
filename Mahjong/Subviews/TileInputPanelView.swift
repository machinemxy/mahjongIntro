//
//  TileInputPanel.swift
//  Mahjong
//
//  Created by Ma Xueyuan on 2021/05/23.
//

import SwiftUI

struct TileInputPanelView: View {
    @State private var selectedOption = 0
    
    let gridLayout = Array(repeating: GridItem(.flexible()), count: 9)
    let options = ["P", "CT", "OT", "CQ", "OQ", "CS", "OS"]
    
    var allTiles: [Tile] {
        var array = [Tile]()
        for i in ["m", "s", "p", "j"] {
            for j in 1...9 {
                array.append(Tile(kind: i, number: j))
            }
        }
        return array
    }
    
    
    var body: some View {
        VStack {
            Picker("Options", selection: $selectedOption) {
                ForEach(0..<options.count) { index in
                    Text(options[index]).tag(index)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            
            LazyVGrid(columns: gridLayout, spacing: 4, content: {
                ForEach(allTiles) {
                    InputTileView(tile: $0)
                }
            }).padding(4)
        }
    }
}

struct TileInputPanelView_Previews: PreviewProvider {
    static var previews: some View {
        TileInputPanelView()
    }
}
