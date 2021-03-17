//
//  PointView.swift
//  Mahjong
//
//  Created by Ma Xueyuan on 2021/03/16.
//

import SwiftUI

struct PointView: View {
    let tableDealer: [PointLine] = Bundle.main.decode("points_dealer.json")
    let gridLayout = Array(repeating: GridItem(.flexible()), count: 5)
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    LazyVGrid(columns: gridLayout, spacing: 8) {
                        // header
                        TableCornerView()
                        ForEach(1..<5) { i in
                            Text("\(i)").font(.headline)
                        }
                        
                        // lines
                        ForEach(tableDealer) { line in
                            Text(line.id).font(.headline)
                            ForEach(line.items) { item in
                                VStack {
                                    Text(item.ron).font(.footnote)
                                    Text(item.sp).font(.footnote)
                                }
                            }
                        }
                    }
                }
            }
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
