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
    let dealerMangan: [PointItem] = Bundle.main.decode("mangan_dealer.json")
    let nonDealerMangan: [PointItem] = Bundle.main.decode("mangan_non_dealer.json")
    let manganHeader = ["5", "6 ~ 7", "8 ~ 9", "10 ~ 12", "13+", "Mangan", "Jumping Mangan", "Double Mangan", "Triple Mangan", "Yakuman"]
    @State private var selectedOption = 0
    
    var selectedTable: [PointLine] {
        if selectedOption == 0 {
            return dealerTable
        } else {
            return nonDealerTable
        }
    }
    
    var selectedMangan: [PointItem] {
        if selectedOption == 0 {
            return dealerMangan
        } else {
            return nonDealerMangan
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
                            HeaderView(content: "\(i)")
                        }
                        
                        // data
                        ForEach(selectedTable) { line in
                            HeaderView(content: line.id)
                            ForEach(line.items) { item in
                                ItemView(ron: item.ron, sp: item.sp)
                            }
                        }
                    }
                    .padding(.bottom)
                    
                    HStack {
                        Text("5+ han").font(.headline)
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    LazyVGrid(columns: gridLayout, spacing: 8) {
                        // header
                        ForEach(manganHeader, id: \.self) { header in
                            HeaderView(content: header)
                        }
                        
                        // data
                        ForEach(selectedMangan) { item in
                            ItemView(ron: item.ron, sp: item.sp)
                        }
                    }
                    .padding(.bottom)
                }
            }
            .navigationBarTitle("Point", displayMode: .inline)
            .navigationBarItems(trailing: Button("Feedback", action: {
                guard let writeReviewURL = URL(string: "https://apps.apple.com/app/id1555907056?action=write-review") else {
                    fatalError("Expected a valid URL")
                }
                UIApplication.shared.open(writeReviewURL, options: [:], completionHandler: nil)
            }))
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct PointView_Previews: PreviewProvider {
    static var previews: some View {
        PointView()
    }
}
