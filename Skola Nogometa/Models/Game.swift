//
//  Game.swift
//  Skola Nogometa
//
//  Created by Luka Vujnovac on 15.08.2021..
//
import Foundation
import SwiftUI

struct Game: Identifiable {
    var id = UUID()
    let homeClub: Club
    let awayClub: Club
    let time: String
    let date: String
}

struct GameList {
    static let games = [
        Game(homeClub: ClubList.clubs[7], awayClub: ClubList.clubs[0], time: "18 : 30", date: "25.08.2021"),
        Game(homeClub: ClubList.clubs[12], awayClub: ClubList.clubs[0], time: "10 : 30", date: "05.09.2021."),
        Game(homeClub: ClubList.clubs[0], awayClub: ClubList.clubs[13], time: "10 : 30", date: "12.09.2021."),
        Game(homeClub: ClubList.clubs[4], awayClub: ClubList.clubs[0], time: "10 : 30", date: "19.09.2021."),
        Game(homeClub: ClubList.clubs[0], awayClub: ClubList.clubs[16], time: "10 : 30", date: "26.09.2021."),
        Game(homeClub: ClubList.clubs[3], awayClub: ClubList.clubs[0], time: "10 : 30", date: "03.10.2021."),
        Game(homeClub: ClubList.clubs[0], awayClub: ClubList.clubs[15], time: "10 : 30", date: "10.10.2021."),
        Game(homeClub: ClubList.clubs[14], awayClub: ClubList.clubs[0], time: "10 : 30", date: "17.10.2021."),
        Game(homeClub: ClubList.clubs[5], awayClub: ClubList.clubs[0], time: "10 : 30", date: "24.10.2021."),
        Game(homeClub: ClubList.clubs[0], awayClub: ClubList.clubs[1], time: "10 : 30", date: "31.10.2021."),
        Game(homeClub: ClubList.clubs[6], awayClub: ClubList.clubs[0], time: "10 : 30", date: "03.11.2021."),
        Game(homeClub: ClubList.clubs[0], awayClub: ClubList.clubs[9], time: "10 : 30", date: "07.11.2021."),
        Game(homeClub: ClubList.clubs[2], awayClub: ClubList.clubs[0], time: "10 : 30", date: "14.11.2021."),
        Game(homeClub: ClubList.clubs[0], awayClub: ClubList.clubs[8], time: "10 : 30", date: "21.11.2021."),
        Game(homeClub: ClubList.clubs[10], awayClub: ClubList.clubs[0], time: "10 : 30", date: "28.11.2021."),
        Game(homeClub: ClubList.clubs[0], awayClub: ClubList.clubs[11], time: "10 : 30", date: "05.12.2021."),
        Game(homeClub: ClubList.clubs[0], awayClub: ClubList.clubs[12], time: "10 : 30", date: "27.02.2022."),
        Game(homeClub: ClubList.clubs[13], awayClub: ClubList.clubs[0], time: "10 : 30", date: "06.03.2022."),
        Game(homeClub: ClubList.clubs[0], awayClub: ClubList.clubs[4], time: "10 : 30", date: "13.03.2022."),
        Game(homeClub: ClubList.clubs[16], awayClub: ClubList.clubs[0], time: "10 : 30", date: "20.03.2022."),
        Game(homeClub: ClubList.clubs[0], awayClub: ClubList.clubs[3], time: "10 : 30", date: "27.03.2022."),
        Game(homeClub: ClubList.clubs[15], awayClub: ClubList.clubs[0], time: "10 : 30", date: "03.04.2022."),
        Game(homeClub: ClubList.clubs[0], awayClub: ClubList.clubs[5], time: "10 : 30", date: "10.04.2022."),
        Game(homeClub: ClubList.clubs[0], awayClub: ClubList.clubs[5], time: "10 : 30", date: "15.04.2022."),
        Game(homeClub: ClubList.clubs[1], awayClub: ClubList.clubs[0], time: "10 : 30", date: "20.04.2022."),
        Game(homeClub: ClubList.clubs[0], awayClub: ClubList.clubs[6], time: "10 : 30", date: "24.04.2022."),
        Game(homeClub: ClubList.clubs[9], awayClub: ClubList.clubs[0], time: "10 : 30", date: "01.05.2022."),
        Game(homeClub: ClubList.clubs[0], awayClub: ClubList.clubs[2], time: "10 : 30", date: "08.05.2022."),
        Game(homeClub: ClubList.clubs[0], awayClub: ClubList.clubs[10], time: "10 : 30", date: "15.05.2022."),
        Game(homeClub: ClubList.clubs[0], awayClub: ClubList.clubs[10], time: "10 : 30", date: "22.05.2022."),
        Game(homeClub: ClubList.clubs[11], awayClub: ClubList.clubs[0], time: "10 : 30", date: "29.05.2021.")
    ]
}
