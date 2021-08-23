//
//  GameStatsView.swift
//  Skola Nogometa
//
//  Created by Luka Vujnovac on 19.08.2021..
//

import SwiftUI

struct GameStatsView: View {
    var body: some View {
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: [Color("background-color")]), startPoint: .leading, endPoint: .trailing)
                .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                HStack {
                    Text("Minutes")
                        .foregroundColor(Color("fourth-color"))
                        .font(Font.system(size: 20, weight: .semibold, design: .default))
                    Image(systemName: "timer")
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 20, height: 20, alignment: .center)
                        .foregroundColor(Color("fourth-color"))
                }
                VStack(alignment: .leading) {
                    HStack {
                        Text("Total Played:")
                        Text("0")
                    }
                    HStack {
                        Text("Total Minutes")
                        Text("0")
                    }
                    HStack {
                        Text("Avg. Minutes:")
                        Text("0")
                    }
                }.padding()
                HStack {
                    Text("Goals")
                        .foregroundColor(Color("fourth-color"))
                        .font(Font.system(size: 20, weight: .semibold, design: .default))
                    Image("goal")
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 20, height: 20, alignment: .center)
                        .foregroundColor(Color("fourth-color"))
                }
                VStack(alignment: .leading) {
                    HStack {
                        Text("Total Goals:")
                        Text("0")
                    }
                    HStack {
                        Text("Avg Min Per Goal:")
                        Text("0")
                    }
                }.padding()
                HStack {
                    Text("Assists")
                        .foregroundColor(Color("fourth-color"))
                        .font(Font.system(size: 20, weight: .semibold, design: .default))
                    Image("assist")
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 20, height: 20, alignment: .center)
                        .foregroundColor(Color("fourth-color"))
                } 
                VStack(alignment: .leading) {
                    HStack {
                        Text("Total Assists:")
                        Text("0")
                    }
                    HStack {
                        Text("Avg. Min Per Assist:")
                        Text("0")
                    }
                }.padding()
                HStack {
                    Text("Cards")
                        .foregroundColor(Color("fourth-color"))
                        .font(Font.system(size: 20, weight: .semibold, design: .default))
                    Image("cards")
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 20, height: 20, alignment: .center)
                        .foregroundColor(Color("fourth-color"))
                }
                VStack(alignment: .leading) {
                    HStack {
                        Text("Yellow Cards:")
                        Text("0")
                    }
                    HStack {
                        Text("Avg. Min Per Yellow Card:")
                        Text("0")
                    }
                    HStack {
                        Text("Red Cards:")
                        Text("0")
                    }
                    HStack {
                        Text("Avg. Min Per Red Card:")
                        Text("0")
                    }
                }.padding()
                
            }
        }
    }
}

struct GameStatsView_Previews: PreviewProvider {
    static var previews: some View {
        GameStatsView()
    }
}
