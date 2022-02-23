//
//  ContentView.swift
//  war-challenge
//
//  Created by Christopher Stewart on 2/16/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card5"
    @State private var cpuCard = "card4"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button {
                    
                    //Generate a random number between 2 and 14
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    //update the cards
                    //playerCard = "card" + String(playerRand)
                    //cpuCard = "card" + String(cpuRand)
                    
                    //update the score
                    playerScore += 1
                    cpuScore += 1
                } label: {
                    Image("dealbutton")
                }
                Spacer()
                HStack{
                        Spacer()
                        VStack {
                            Text("Player").padding(.bottom, 10.0)
                            Text(String(playerScore))
                        }
                            .foregroundColor(Color.white)
                            .font(.largeTitle)
                        Spacer()
                        VStack {
                            Text("CPU").padding(.bottom, 10.0)
                            Text(String(cpuScore))
                        }
                        .foregroundColor(Color.white)
                        .font(.largeTitle)
                        Spacer()
                }
                Spacer()
    
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
