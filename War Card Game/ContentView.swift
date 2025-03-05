//
//  ContentView.swift
//  War Card Game
//
//  Created by Admin on 05/03/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard: String = "card4"
    @State var cpuCard: String = "card3"
    
    @State var playerScore: Int = 0
    @State var spuScore: Int = 0
    
    var body: some View {
        ZStack {
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack() {
                
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }
                
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .padding(.bottom, 12)
                        Text("\(playerScore)")
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .padding(.bottom, 12)
                        Text("\(spuScore)")
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)

                Spacer()
            }
        }
    }
    
    func deal() {
        // Randomize the players card
        let playerValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerValue)
        
        // Randomize the cpues card
        let cpuValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuValue)
        
        // Update the score
        if playerValue > cpuValue {
            playerScore += 1
        } else if playerValue < cpuValue {
            spuScore += 1
        }
        
    }
}

#Preview {
    ContentView()
}
