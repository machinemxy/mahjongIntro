//
//  ContentView.swift
//  Mahjong
//
//  Created by 馬学渊 on 2021/01/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            YakusView()
                .tabItem {
                    Image(systemName: "rectangle.portrait")
                    Text("Yakus")
                }
            
            FuView()
                .tabItem {
                    Image(systemName: "diamond")
                    Text("Fu")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
