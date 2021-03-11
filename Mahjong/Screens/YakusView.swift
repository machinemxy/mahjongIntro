//
//  YakusView.swift
//  Mahjong
//
//  Created by Ma Xueyuan on 2021/03/11.
//

import SwiftUI

struct YakusView: View {
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

struct YakusView_Previews: PreviewProvider {
    static var previews: some View {
        YakusView()
    }
}
