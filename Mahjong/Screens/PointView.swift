//
//  PointView.swift
//  Mahjong
//
//  Created by Ma Xueyuan on 2021/03/16.
//

import SwiftUI

struct PointView: View {
    var body: some View {
        NavigationView {
            Text("Hello, World!")
            .navigationBarTitle("Point", displayMode: .inline)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct PointView_Previews: PreviewProvider {
    static var previews: some View {
        PointView()
    }
}
