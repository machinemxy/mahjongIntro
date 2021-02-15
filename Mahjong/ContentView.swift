//
//  ContentView.swift
//  Mahjong
//
//  Created by 馬学渊 on 2021/01/24.
//

import SwiftUI

struct ContentView: View {
    let yakus: [Yaku] = Bundle.main.decode("yaku_en.json")
    let options = ["All yakus", "Open yakus"]
    @State private var selectedOption = 0
    
    var selectedYakus: [Yaku] {
        if selectedOption == 0 {
            return yakus
        } else {
            return yakus.filter { $0.marks.count > 1 }
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Picker("Options", selection: $selectedOption) {
                    ForEach(0..<2) { index in
                        Text(options[index]).tag(index)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                
                ForEach(selectedYakus, id: \.title) { yaku in
                    YakuView(yaku: yaku)
                }
            }
            .navigationBarTitle("Yakus")
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
