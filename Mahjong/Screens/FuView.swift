//
//  FuView.swift
//  Mahjong
//
//  Created by Ma Xueyuan on 2021/03/11.
//

import SwiftUI

struct FuView: View {
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Special yakus")) {
                    KeyValuePairView(key: "Flat hand (self pick with closed hand)", value: "fixed 20")
                    KeyValuePairView(key: "Flat hand (else)", value: "fixed 30")
                    KeyValuePairView(key: "Seven pairs", value: "fixed 25")
                }
                
                Section(header: Text("Basic fu")) {
                    KeyValuePairView(key: "Base", value: "20")
                    KeyValuePairView(key: "Self pick", value: "2")
                    KeyValuePairView(key: "Ron with closed hand", value: "10")
                }
                
                Section(header: Text("Fu base on hand")) {
                    KeyValuePairView(key: "Pair of dragons, own wind or prevailing wind", value: "2")
                    KeyValuePairView(key: "Open triplet (2-8)", value: "2")
                    KeyValuePairView(key: "Open triplet (1, 9 or honor tiles)", value: "4")
                    KeyValuePairView(key: "Closed triplet (2-8)", value: "4")
                    KeyValuePairView(key: "Closed triplet (1, 9 or honor tiles)", value: "8")
                    KeyValuePairView(key: "Open quad (2-8)", value: "8")
                    KeyValuePairView(key: "Open quad (1, 9 or honor tiles)", value: "16")
                    KeyValuePairView(key: "Closed quad (2-8)", value: "16")
                    KeyValuePairView(key: "Closed quad (1, 9 or honor tiles)", value: "32")
                }
                
                Section(header: Text("Fu base on waiting")) {
                    KeyValuePairView(key: "Waiting for 1 side (e.g. having 1, 2 and waiting for 3)", value: "2")
                    KeyValuePairView(key: "Waiting for middle (e.g. having 2, 4 and waiting for 3)", value: "2")
                    KeyValuePairView(key: "Waiting for another same tile to make a pair", value: "2")
                }
                
                Section(header: Text("Example")) {
                    VStack(alignment: .leading) {
                        HandView(blocks: ["m2,m3,m4", "s9,s9,s9", "p7,p8,p9", "m8,m8,nu", "bk,j7,j7,bk"])
                        HStack {
                            Text("If the player self pick the winning tile of").font(.footnote)
                            Image("p7")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 15, height: 20)
                            Spacer()
                        }
                        Text("His total fu will be:").font(.footnote)
                    }
                    KeyValuePairView(key: "Base", value: "20")
                    KeyValuePairView(key: "Self pick", value: "+ 2")
                    KeyValuePairView(key: "Closed triplet (1, 9 or honor tiles)", value: "+ 8")
                    KeyValuePairView(key: "Closed quad (1, 9 or honor tiles)", value: "+ 32")
                    KeyValuePairView(key: "Waiting for 1 side", value: "+ 2")
                    KeyValuePairView(key: "Round up (64 -> 70)", value: "= 70")
                }
            }
            .navigationBarTitle("Fu", displayMode: .inline)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct FuView_Previews: PreviewProvider {
    static var previews: some View {
        FuView()
    }
}
