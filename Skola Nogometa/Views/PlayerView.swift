//
//  PlayerView.swift
//  Skola Nogometa
//
//  Created by Luka Vujnovac on 16.08.2021..
//
import SwiftUI

struct PlayerView: View {
    
    @State var selectedPosition: Bool = false
    @State var showsACtionSheet = false
    @State var message = ""
    @State var isStarting: Bool?
    
    var body: some View {
        VStack {
            Image(systemName: selectedPosition ? "star.circle.fill" : "circle")
                .foregroundColor(selectedPosition ? Color.yellow : Color("fourth-color"))
                .font(Font.title2.weight(.bold))
                .onTapGesture {
                    selectedPosition.toggle()
                    showsACtionSheet.toggle()
                }
                .actionSheet(isPresented: $showsACtionSheet, content: {
                    let starter = ActionSheet.Button.default(Text("Starter")) {
                        print("stisnija starter")
                        isStarting = true
                    }
                    
                    let bench = ActionSheet.Button.default(Text("Bench")) {
                        print("stisnija klupulja")
                        isStarting = false
                        print("\(isStarting)")
                    }
                    
                    return ActionSheet(title: Text("select"), message: Text("Message"), buttons: [starter, bench])
                })
            switch isStarting {
                case true:
                    Text("Starter")
                        .background(Color("fourth-color"))
                        .foregroundColor(Color("second-color"))
                        .font(Font.system(size: 20, weight: .semibold, design: .default))
                case false: 
                    Text("Bench")
                default:
                    Text("")
            }
        }
    }
}
struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
