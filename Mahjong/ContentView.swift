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
                    Image(systemName: "star")
                    Text("Yakus")
                }
            
            FuView()
                .tabItem {
                    Image(systemName: "rectangle.portrait")
                    Text("Fu")
                }
            
            PointView()
                .tabItem {
                    Image(systemName: "dollarsign.circle")
                    Text("Point")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
