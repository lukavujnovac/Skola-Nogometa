//
//  GameListView.swift
//  Skola Nogometa
//
//  Created by Luka Vujnovac on 22.08.2021..
//
import SwiftUI

struct GameListView: View {
    
    @State var show = false
    
    init() {
        UINavigationBar.appearance().barTintColor = UIColor.init(red: 0.090, green: 0.170, blue: 0.440, alpha: 1)
    }
    
    var games: [Game] = GameList.games
    
    var body: some View {
        
        ZStack{ 
            NavigationView {
                List(games, id: \.id) { game in
                    
                    NavigationLink(
                        destination: GameDetailView(game: game),
                        label: {
                            GameCellView(game: game)
                        }).frame(height: 100, alignment: .leading)
                        .listItemTint(.red)
                        .padding(.leading, -20)
                }
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Image(systemName: "sportscourt")
                            .resizable()
                            .imageScale(.large)
                            .foregroundColor(Color("third-color"))
                    }
                }
            }.blur(radius: show ? 3.0 : 0)
            .accentColor(Color("third-color"))
            .background(Color.red)
            VStack {
                Spacer()
                
                HStack {
                    Spacer()
                        
                    ExpandableFAB(show: $show)
                        .padding()
                }
            }
        }
    }
}

struct GameListView_Previews: PreviewProvider {
    static var previews: some View {
        GameListView()
    }
}

struct ExpandableFAB: View {
    
    @Binding var show: Bool
    
    var body: some View {
        VStack(spacing: 20) {

            if show {
                VStack {
                    Button(action: {
                        show.toggle()
                    }, label: {
                        Image("match")
                            .renderingMode(.template)
                            .resizable()
                            .frame(width: 35, height: 25, alignment: .center)
                            .padding(18)
                    })
                    .background(Color("fourth-color"))
                    .foregroundColor(Color("second-color"))
                    .clipShape(Circle())
                    
                    Text("Match")
                        .foregroundColor(Color("fourth-color"))
                        .fontWeight(.semibold)
                }
                
                VStack {
                    Button(action: {
                        show.toggle()
                    }, label: {
                        Image("training")
                            .renderingMode(.template)
                            .resizable()
                            .frame(width: 35, height: 25, alignment: .center)
                            .padding(18)
                    })
                    .background(Color("fourth-color"))
                    .foregroundColor(Color("second-color"))
                    .clipShape(Circle())
                    
                    Text("Training")
                        .foregroundColor(Color("fourth-color"))
                        .fontWeight(.semibold)
                }
            }
            
            
            VStack {
                Button(action: {
                    show.toggle()
                }, label: {
                    Image(systemName: "chevron.up")
                        .resizable()
                        .frame(width: 25, height: 15, alignment: .center)
                        .padding(22)
                })
                .background(Color("fourth-color"))
                .foregroundColor(Color("second-color"))
                .clipShape(Circle())
                .rotationEffect(.degrees(show ? 180 : 0))
                .animation(.spring())
                
                Text("Exit")
                    .foregroundColor(show ? Color("fourth-color") : .clear)
                    .fontWeight(.semibold)
            }
        }
    }
}
