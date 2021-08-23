//
//  PlayerStatsView.swift
//  Skola Nogometa
//
//  Created by Luka Vujnovac on 18.08.2021..
//
import SwiftUI

struct PlayerStatsView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("background-color")]), startPoint: .leading, endPoint: .trailing)
                .ignoresSafeArea()
            NavigationView{
                ScrollView {
                    VStack {
                        RoundedRectangle(cornerRadius: 25.0)
                            .fill(Color("second-color"))
                            .padding(.horizontal, 40)
                            .padding(.bottom, 25)
                            .shadow(color: .gray, radius: 20, x: 1, y: 2)
                            .overlay(
                                HStack(spacing: 50) {
                                    VStack(alignment: .leading, spacing: 30) {
                                        Text("Luka Vujnovac")
                                            .font(Font.system(size: 18, weight: .medium, design: .default))
                                            .foregroundColor(Color("fourth-color"))
                                        Text("NK OMLADINAC")
                                            .font(Font.system(size: 12, weight: .light, design: .default))
                                            .foregroundColor(.secondary)
                                    }.frame(alignment: .leading)
                                    Image(systemName: "person.circle.fill")
                                        .resizable()
                                        .frame(width: 65, height: 65, alignment: .center)
                                        .foregroundColor(.green)
                                }
                            )
                            .frame(height: 140, alignment: .center)
                        
                        HStack(spacing: 40) {
                            VStack(spacing: 25) {
                                RoundedRectangle(cornerRadius: 25)
                                    .frame(width: 95, height: 50, alignment: .center)
                                    .foregroundColor(Color("second-color"))
                                    .shadow(color: .gray, radius: 20, x: 1, y: 2)
                                    .overlay(
                                        VStack {
                                            Text("Position:")
                                                .foregroundColor(.secondary)
                                                .font(Font.system(size: 15, weight: .light, design: .default))
                                            
                                            Text("CDM")
                                                .foregroundColor(Color("fourth-color"))
                                                .font(Font.system(size: 17, weight: .medium, design: .default))
                                        }
                                    ) 
                                RoundedRectangle(cornerRadius: 25)
                                    .frame(width: 95, height: 50, alignment: .center)
                                    .foregroundColor(Color("second-color"))
                                    .shadow(color: .gray, radius: 20, x: 1, y: 2)
                                    .overlay(
                                        VStack {
                                            Text("Height:")
                                                .foregroundColor(.secondary)
                                                .font(Font.system(size: 15, weight: .light, design: .default))
                                            
                                            Text("191")
                                                .foregroundColor(Color("fourth-color"))
                                                .font(Font.system(size: 17, weight: .medium, design: .default))
                                        }
                                    )
                            }
                            
                            VStack(spacing: 25) {
                                RoundedRectangle(cornerRadius: 25)
                                    .frame(width: 95, height: 50, alignment: .center)
                                    .foregroundColor(Color("second-color"))
                                    .shadow(color: .gray, radius: 20, x: 1, y: 2)
                                    .overlay(
                                        VStack {
                                            Text("Age")
                                                .foregroundColor(.secondary)
                                                .font(Font.system(size: 15, weight: .light, design: .default))
                                            
                                            Text("17")
                                                .foregroundColor(Color("fourth-color"))
                                                .font(Font.system(size: 17, weight: .medium, design: .default))
                                        }
                                    )
                                RoundedRectangle(cornerRadius: 25)
                                    .frame(width: 95, height: 50, alignment: .center)
                                    .foregroundColor(Color("second-color"))
                                    .shadow(color: .gray, radius: 20, x: 1, y: 2)
                                    .overlay(
                                        VStack {
                                            Text("Weight")
                                                .foregroundColor(.secondary)
                                                .font(Font.system(size: 15, weight: .light, design: .default))
                                            
                                            Text("75")
                                                .foregroundColor(Color("fourth-color"))
                                                .font(Font.system(size: 17, weight: .medium, design: .default))
                                        }
                                    )
                            }
                        }
                        
                        VStack(spacing: 20) {
                            NavigationLink(
                                destination: GameStatsView(),
                                label: {
                                    RoundedRectangle(cornerRadius: 25.0)
                                        .frame(height: 60, alignment: .center)
                                        .padding(.horizontal, 40)
                                        .foregroundColor(Color("second-color"))
                                        .shadow(color: .gray, radius: 20, x: 1, y: 2)
                                        .overlay(
                                            Text("Matches")
                                                .foregroundColor(Color("fourth-color"))
                                                .font(Font.system(size: 20, weight: .medium, design: .default))
                                        )
                                }).padding(.top, 30)
                            NavigationLink(
                                destination: TrainingStatsView(),
                                label: {
                                    RoundedRectangle(cornerRadius: 25.0)
                                        .frame(height: 60, alignment: .center)
                                        .padding(.horizontal, 40)
                                        .foregroundColor(Color("second-color"))
                                        .shadow(color: .gray, radius: 20, x: 1, y: 2)
                                        .overlay(
                                            Text("Trainings")
                                                .foregroundColor(Color("fourth-color"))
                                                .font(Font.system(size: 20, weight: .medium, design: .default))
                                        )
                                })
                        }
                        
                    }.padding(.vertical, 30)
                    
                    VStack(spacing: 10) {
                        HStack(spacing: 10) {
                            RoundedRectangle(cornerRadius: 25.0)
                                .frame(width: 100, height: 100, alignment: .center)
                                .foregroundColor(Color("second-color"))
                                .shadow(color: .gray, radius: 20, x: 2, y: 1)
                                .overlay(
                                    VStack {
                                        Image(systemName: "gearshape.fill")
                                            .resizable()
                                            .foregroundColor(Color("fourth-color"))
                                            .frame(width: 40, height: 40, alignment: .center)
                                        Text("Settings")
                                            .foregroundColor(Color("fourth-color"))
                                            .font(Font.system(size: 15, weight: .medium, design: .default))
                                    }
                                )
                                .onTapGesture {
                                    print("ides uc u postavke")
                                }
                            RoundedRectangle(cornerRadius: 25.0)
                                .frame(width: 100, height: 100, alignment: .center)
                                .foregroundColor(Color("second-color"))
                                .shadow(color: .gray, radius: 20, x: 2, y: 1)
                                .overlay(
                                    VStack {
                                        Image(systemName: "bell.fill")
                                            .resizable()
                                            .foregroundColor(Color("fourth-color"))
                                            .frame(width: 40, height: 40, alignment: .center)
                                        Text("Notifications")
                                            .foregroundColor(Color("fourth-color"))
                                            .font(Font.system(size: 15, weight: .medium, design: .default))
                                    }
                                )
                                .onTapGesture {
                                    print("ides uc u obav")
                                }
                        }
                        HStack(spacing: 10) {
                            RoundedRectangle(cornerRadius: 25.0)
                                .frame(width: 100, height: 100, alignment: .center)
                                .foregroundColor(Color("second-color"))
                                .shadow(color: .gray, radius: 20, x: 2, y: 1)
                                .overlay(
                                    VStack {
                                        Image(systemName: "questionmark.circle.fill")
                                            .resizable()
                                            .foregroundColor(Color("fourth-color"))
                                            .frame(width: 40, height: 40, alignment: .center)
                                        Text("Help")
                                            .foregroundColor(Color("fourth-color"))
                                            .font(Font.system(size: 15, weight: .medium, design: .default))
                                    }
                                )
                                .onTapGesture {
                                    print("ides uc u help")
                                }
                            RoundedRectangle(cornerRadius: 25.0)
                                .frame(width: 100, height: 100, alignment: .center)
                                .foregroundColor(Color("second-color"))
                                .shadow(color: .gray, radius: 20, x: 2, y: 1)
                                .overlay(
                                    VStack {
                                        Image(systemName: "arrowshape.turn.up.left.circle.fill")
                                            .resizable()
                                            .foregroundColor(.red)
                                            .frame(width: 40, height: 40, alignment: .center)
                                        Text("Log Out")
                                            .foregroundColor(Color.red)
                                            .font(Font.system(size: 15, weight: .medium, design: .default))
                                    }
                                )
                                .onTapGesture {
                                    print("ides izac")
                                }
                        }
                    } 
                }
                .navigationBarHidden(true)
            }.accentColor(Color("fourth-color"))
        }
    }
}
struct PlayerStatsView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerStatsView()
    }
}
