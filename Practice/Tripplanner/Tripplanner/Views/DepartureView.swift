//
//  DepartureView.swift
//  Tripplanner
//
//  Created by rune on 10/01/2026.
//

import SwiftUI

struct DepartureView: View {
    var body: some View {
        VStack{
            HStack{
                VStack{
                    Text("BRU").font(.title).foregroundColor(.backgroundColorColorset)
                    Text("Brussels").foregroundColor(.primaryColorColorset)
                    Text("8:15").fontWeight(.bold)
                }
                VStack{
                    Image(systemName: "airplane")
                }
                VStack{
                    Text("BRU").font(.title).foregroundColor(.backgroundColorColorset)
                    Text("Brussels").foregroundColor(.primaryColorColorset)
                    Text("8:15").fontWeight(.bold)
                }
            }.padding(.bottom)
            Grid{
                GridRow {
                    Text("Flight").foregroundColor(.white)
                    Text("gate").foregroundColor(.white)
                    Text("seat").foregroundColor(.white)
                }
                GridRow {
                    Text("SN23A").foregroundColor(.white).fontWeight(.bold)
                    Text("B23").foregroundColor(.white).fontWeight(.bold)
                    Text("27A").foregroundColor(.white).fontWeight(.bold)
                }
            }.padding().background(.backgroundColorColorset).cornerRadius(10).padding(.bottom)
            HStack{
                VStack{
                    Text("Passenger").foregroundColor(.primaryColorColorset)
                    Text("Dirk Hostens").foregroundColor(.gray).padding(.bottom)
                    Text("Class").foregroundColor(.primaryColorColorset)
                    Text("Business").foregroundColor(.gray).padding(.bottom)
                    Text("Flight date").foregroundColor(.primaryColorColorset)
                    Text("27/08/2024").foregroundColor(.gray).padding(.bottom)
                }
                Image(systemName: "person.crop.artframe").resizable().aspectRatio(contentMode: .fit).frame(maxHeight: 150).foregroundColor(.primaryColorColorset)
            }
            Spacer()
        }
    }
}


