//
//  ContentView.swift
//  Mahjong
//
//  Created by 馬学渊 on 2021/01/24.
//

import SwiftUI

struct ContentView: View {
    var yakus: [Yaku] = Bundle.main.decode("yaku_en.json")
    
    var body: some View {
        NavigationView {
            List(yakus, id: \.title) { yaku in
                YakuView(yaku: yaku)
            }
            .navigationBarTitle("Yakus")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
