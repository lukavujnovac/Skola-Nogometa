//
//  ContentView.swift
//  Skola Nogometa
//
//  Created by Luka Vujnovac on 15.08.2021..
//
import SwiftUI

struct ContentView: View {
    
    init() {
        UITabBar.appearance().barTintColor = UIColor.init(red: 0.090,
                                                          green: 0.170,
                                                          blue: 0.440,
                                                          alpha: 1)
    }
    var body: some View {
        
        TabView {
            GameListView()
                .navigationViewStyle(StackNavigationViewStyle())
                .tabItem {
                    Image(systemName: "house")
                    Text("home")
                }
            PlayerStatsView()
                .tabItem { 
                    Image(systemName: "person")
                    Text("Account")
                }
        }.accentColor(Color("third-color"))
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

