//
//  GameCellView.swift
//  Skola Nogometa
//
//  Created by Luka Vujnovac on 15.08.2021..
//
import SwiftUI

struct GameCellView: View {
    var game: Game
    var body: some View {
        
        Rectangle()
            .frame(alignment: .center)
            .foregroundColor(Color("background-color"))
            .overlay(
                HStack(alignment: .center, spacing: 0) {
                    VStack {
                        Image(game.homeClub.image)
                            .resizable()
                            .frame(width: 50, height: 50, alignment: .center)
                        Text(game.homeClub.name)
                            .frame(width: 100, height: 20, alignment: .center)
                            .font(Font.system(size: 17, weight: .semibold, design: .default))
                    }
                    
                    VStack {
                        Text(game.time)
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
                            .font(Font.system(size: 17, weight: .semibold, design: .default))
                    }.padding()
                }.padding(.leading, 20)
            )
        
        
    }
}

struct GameCellView_Previews: PreviewProvider {
    static var previews: some View {
        GameCellView(game: GameList.games.first!)
    }
}
