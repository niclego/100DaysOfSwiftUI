//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Nicolas Le Gorrec on 5/5/21.
//

import SwiftUI

struct ContentView: View {
    @State var computerMove = Int.random(in: 0 ... 2)
    @State var playerWin = Bool.random()
    @State var score = 0
    @State var round = 1
    @State var alertIsPresented = false
    
    let moves = ["🪨", "📄", "✂️"]
    
    func updateUI(userMove: Int) {
        updateScore(userMove: userMove)

        if (round < 10) {
            round += 1
            computerMove = Int.random(in: 0 ... 2)
            playerWin = Bool.random()
        } else {
            showScore()
        }
    }
    
    func updateScore(userMove: Int) {
        if (playerWin) {
            if (userMove == (computerMove + 1) % 3) {
                score += 1
            }
        } else {
            if (computerMove == (userMove + 1) % 3) {
                score += 1
            }
        }
        
    }
    
    func showScore() {
        alertIsPresented.toggle()
    }
    
    func resetGame() {
        computerMove = Int.random(in: 0 ... 2)
        playerWin = Bool.random()
        score = 0
        round = 1
    }
    
    var body: some View {
        VStack {
            HStack {
                HStack {
                    Text("Round:")
                        .foregroundColor(.gray)
                    Text("\(round)/10")
                        .font(.title)
                        .foregroundColor(.blue)
                }
            }
            
            Spacer()

            Section {
                HStack {
                    Text("Try to:")
                        .foregroundColor(.gray)
                    Text("\(playerWin ? "Win" : "Lose")")
                        .font(.title)
                        .foregroundColor(.yellow)
                }
                HStack {
                    Text("Computer's move:")
                        .foregroundColor(.gray)
                    Text("\(moves[computerMove])")
                        .font(.title)
                        .foregroundColor(.red)
                }
            }
            
            Spacer()
            
            Text("Select your move:")
                .foregroundColor(.gray)
            HStack {
                Button(moves[0]) {
                    updateUI(userMove: 0)
                }
                .font(.largeTitle)
                .padding()
                
                Spacer()
                
                Button(moves[1]) {
                    updateUI(userMove: 1)
                }
                .font(.largeTitle)
                .padding()
                
                Spacer()
                
                Button(moves[2]) {
                    updateUI(userMove: 2)
                }
                .font(.largeTitle)
                .padding()
            }
            .padding()
        }
        .alert(isPresented: $alertIsPresented) {
            Alert(title: Text("Rounds complete"), message: Text("Your score: \(score)"), dismissButton: .default(Text("Try again")) {
                resetGame()
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
