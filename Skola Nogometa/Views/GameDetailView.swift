//
//  GameDetailView.swift
//  Skola Nogometa
//
//  Created by Luka Vujnovac on 15.08.2021..
//
import SwiftUI

struct GameDetailView: View {
    
    var game: Game
    
    @State var selection = 0
    @State var text: String = ""
    
    //array svih formacija
    let formations = ["4231", "433", "442", "442(2)"]
    
    var body: some View {
        ScrollView {
            
            VStack {
                HStack(alignment: .center, spacing: 0) {
                    VStack {
                        Image(game.homeClub.image)
                            .resizable()
                            .frame(width: 50, height: 50, alignment: .center)
                        Text(game.homeClub.name)
                            .frame(width: 100, height: 20, alignment: .center)
                            .font(Font.system(size: 15, weight: .semibold, design: .default))
                    }.padding()
                    
                    VStack {
                        Text(" - ")
                            .font(.title)
                            .fontWeight(.bold)
                            .frame(width: 100, height: 60, alignment: .center)
                        Text(game.date)
                    }.padding()
                    
                    VStack {
                        Image(game.awayClub.image)
                            .resizable()
                            .frame(width: 50, height: 50, alignment: .center)
                        Text(game.awayClub.name)
                            .frame(width: 100, height: 20, alignment: .center)
                            .font(Font.system(size: 15, weight: .semibold, design: .default))
                    }.padding()
                }
                
                HStack {
                    Text("Minutes Played:")
                        .padding(.leading, 50)
                        .font(Font.system(size: 18, weight: .medium, design: .default))
                    Spacer()
                    TextField("number of minutes", text: $text)
                        .keyboardType(.numberPad)
                        .padding()
                        .accentColor(.green)
                }
                
                HStack {
                    
                    Text("formation:")
                        .padding(.leading, 50)
                        .font(Font.system(size: 20, weight: .medium, design: .default))
                    
                    Picker(selection: $selection, label: Text(""), content: {
                        ForEach(0..<formations.count) { index in
                            Text(self.formations[index]).tag(index)
                        }
                    })
                    .padding(.vertical, -30)
                    .shadow(color: Color("second-color"), radius: 10, x: 2, y: 2)
                }
                
                Image(systemName: "sportscourt")
                    .resizable()
                    .frame(width: 350, height: 220, alignment: .center)
                    .font(Font.title.weight(.ultraLight))
                    .background(Color(.green))
                    .cornerRadius(40)
                    .rotationEffect(.degrees(-90))
                    .scaledToFit()
                    .padding(.vertical, 100)
                    .padding(.bottom, 50)
                    .overlay(
                        VStack {
                            switch selection {
                                case 0:
                                    Formation4231()
                                case 1:
                                    Formation433()
                                case 2:
                                    Formation442()
                                case 3:
                                    Formation4422()
                                default:
                                    Formation4231()
                            }
                            
                        }
                    )
            }
        }
    }
}

struct GameDetailView_Previews: PreviewProvider {
    static var previews: some View {
        GameDetailView(game: GameList.games.first!)
    }
}
