//
//  PointView.swift
//  Mahjong
//
//  Created by Ma Xueyuan on 2021/03/16.
//

import SwiftUI

struct PointView: View {
    let gridLayout = Array(repeating: GridItem(.flexible()), count: 5)
    let options = ["Dealer", "Non-dealer"]
    let dealerTable: [PointLine] = Bundle.main.decode("points_dealer.json")
    let nonDealerTable: [PointLine] = Bundle.main.decode("points_non_dealer.json")
    @State private var selectedOption = 0
    
    var selectedTable: [PointLine] {
        if selectedOption == 0 {
            return dealerTable
        } else {
            return nonDealerTable
        }
    }
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    Picker("Options", selection: $selectedOption) {
                        ForEach(0..<2) { index in
                            Text(options[index]).tag(index)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding()
                    
                    HStack {
                        Text("1 ~ 4 han").font(.headline)
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    LazyVGrid(columns: gridLayout, spacing: 8) {
                        // header
                        TableCornerView()
                        ForEach(1..<5) { i in
                            Text("\(i)").font(.subheadline)
                        }
                        
                        // lines
                        ForEach(selectedTable) { line in
                            Text(line.id).font(.subheadline)
                            ForEach(line.items) { item in
                                VStack {
                                    Text(item.ron).font(.footnote)
                                    Text(item.sp).font(.caption2)
                                }
                            }
                        }
                    }
                    
                    HStack {
                        Text("5+ han").font(.headline)
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    LazyVGrid(columns: gridLayout, spacing: 8) {
                        Text("5").font(.subheadline)
                        Text("6 ~ 7").font(.subheadline)
                        Text("8 ~ 9").font(.subheadline)
                        Text("10 ~ 12").font(.subheadline)
                        Text("13+").font(.subheadline)
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
