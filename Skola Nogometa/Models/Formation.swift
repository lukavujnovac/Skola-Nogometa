//
//  Formations.swift
//  Skola Nogometa
//
//  Created by Luka Vujnovac on 17.08.2021..
//
import Foundation
import SwiftUI

struct Formation4231: View {
    var body: some View {
        VStack(spacing: 40){
            PlayerView()
            
            HStack(spacing: 50) {
                PlayerView()
                PlayerView()
                PlayerView()
            }
            
            HStack(spacing: 50) {
                PlayerView()
                PlayerView()
            }
            
            HStack(spacing: 30) {
                PlayerView()
                PlayerView()
                PlayerView()
                PlayerView()
            }
        }
    }
}

struct Formation433: View {
    var body: some View {
        VStack(spacing: 55){
            HStack(spacing: 50) {
                PlayerView()
                PlayerView()
                PlayerView()
            }
            
            HStack(spacing: 40) {
                PlayerView()
                PlayerView()
                PlayerView()
            }
            
            HStack(spacing: 30) {
                PlayerView()
                PlayerView()
                PlayerView()
                PlayerView()
            }
        }
    }
}

struct Formation442: View {
    var body: some View {
        VStack(spacing: 15){
            HStack(spacing: 40) {
                PlayerView()
                PlayerView()
            }
                PlayerView()
            HStack(spacing: 70) {
                PlayerView()
                PlayerView()
            }
            PlayerView()
            HStack(spacing: 30) {
                PlayerView()
                PlayerView()
                PlayerView()
                PlayerView()
            }
        }
    }
}

struct Formation4422: View {
    var body: some View {
        VStack(spacing: 55){
            HStack(spacing: 50) {
                PlayerView()
                PlayerView()
            }
            
            HStack(spacing: 30) {
                PlayerView()
                PlayerView()
                PlayerView()
                PlayerView()
            }
            
            HStack(spacing: 30) {
                PlayerView()
                PlayerView()
                PlayerView()
                PlayerView()
            }
        }
    }
}

