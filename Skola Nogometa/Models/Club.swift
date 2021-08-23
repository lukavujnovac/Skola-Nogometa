//
//  Club.swift
//  Skola Nogometa
//
//  Created by Luka Vujnovac on 15.08.2021..
//
import Foundation

struct Club {
    let name: String
    let image: String
}

struct ClubList {
    static let clubs = [
        Club(name: "Omladinac", image: "omladinac"),
        Club(name: "Hajduk", image: "hajduk"),
        Club(name: "Dugopolje", image: "dugopolje"),
        Club(name: "Adriatic", image: "adriatic"),
        Club(name: "Zadar", image: "zadar"),
        Club(name: "Sibenik", image: "sibenik"),
        Club(name: "Junak", image: "junak"),
        Club(name: "Gošk", image: "gosk"),
        Club(name: "Gošk Dubrovnik", image: "gosk-dubrovnik"),
        Club(name: "Dalmatinac (C)", image: "dalmatinac-crno"),
        Club(name: "Split", image: "split"),
        Club(name: "Solin", image: "solin"),
        Club(name: "Trogir", image: "trogir"),
        Club(name: "Primorac(BNM)", image: "primorac-bnm"),
        Club(name: "Primorac (S)", image: "primorac-s"),
        Club(name: "Neretva", image: "neretva"),
        Club(name: "Zmaj", image: "zmaj")
        
    ]
}
