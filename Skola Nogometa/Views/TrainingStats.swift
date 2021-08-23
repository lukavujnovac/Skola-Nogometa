//
//  TrainingStatsView.swift
//  Skola Nogometa
//
//  Created by Luka Vujnovac on 19.08.2021..
//

import SwiftUI

struct TrainingStatsView: View {
    var body: some View {
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: [Color("background-color")]), startPoint: .leading, endPoint: .trailing)
                .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                HStack {
                    Text("Club Trainings")
                        .foregroundColor(Color("fourth-color"))
                        .font(Font.system(size: 20, weight: .semibold, design: .default))
                    
                    Image("training")
                        .resizable()
                        .renderingMode(.template)
                        .foregroundColor(Color("fourth-color"))
                        .frame(width: 25, height: 25, alignment: .center)
                }
                VStack(alignment: .leading) {
                    HStack {
                        Text("Total Trained:")
                        Text("0")
                    }
                    HStack {
                        Text("Total This Week:")
                        Text("0")
                    }
                    HStack {
                        Text("Avg. Weekly:")
                        Text("0")
                    }
                }.padding()
                HStack {
                    Text("Gym Workouts")
                        .foregroundColor(Color("fourth-color"))
                        .font(Font.system(size: 20, weight: .semibold, design: .default))
                    
                    Image("gym")
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 25, height: 25, alignment: .center)
                        .foregroundColor(Color("fourth-color"))
                }
                VStack(alignment: .leading) {
                    HStack {
                        Text("Total Workouts:")
                        Text("0")
                    }
                    HStack {
                        Text("Workouts This Week:")
                        Text("0")
                    }
                    HStack {
                        Text("Avg. Workouts Weekly:")
                        Text("0")
                    }
                }.padding()
                HStack {
                    Text("Runs")
                        .foregroundColor(Color("fourth-color"))
                        .font(Font.system(size: 20, weight: .semibold, design: .default))
                    Image("run")
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 25, height: 25, alignment: .center)
                        .foregroundColor(Color("fourth-color"))
                } 
                VStack(alignment: .leading) {
                    HStack {
                        Text("Total Runs:")
                        Text("0")
                    }
                    HStack {
                        Text("Total This Week:")
                        Text("0")
                    }
                    HStack {
                        Text("Avg. Rund. Weekly:")
                        Text("0")
                    }
                }.padding()
                HStack {
                    Text("Individual Trainings")
                        .foregroundColor(Color("fourth-color"))
                        .font(Font.system(size: 20, weight: .semibold, design: .default))
                    
                    Image("individual")
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 25, height: 25, alignment: .center)
                        .foregroundColor(Color("fourth-color"))
                }
                VStack(alignment: .leading) {
                    HStack {
                        Text("Total Trainings:")
                        Text("0")
                    }
                    HStack {
                        Text("Total This Week:")
                        Text("0")
                    }
                    HStack {
                        Text("Avg. Trainings Weekly:")
                        Text("0")
                    }
                }.padding()
                
            }
        }
    }
}

struct TrainingStatsView_Previews: PreviewProvider {
    static var previews: some View {
        TrainingStatsView()
    }
}

