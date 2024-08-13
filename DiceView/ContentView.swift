//
//  ContentView.swift
//  DiceView
//
//  Created by Tony Gultom on 13/08/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var numberOfDice = 1
    
    
    var body: some View {
        VStack {
            
            Text("Dice Roller").font(.largeTitle.lowercaseSmallCaps())
            
            
            HStack(spacing: 30) {
                ForEach(1...numberOfDice, id: \.description) {
                    _ in
                    DiceView()
                }
            }
            
            HStack (spacing: 30) {
                Button("Remove Dice", systemImage: "minus") {
                    numberOfDice -= 1
                }.disabled(numberOfDice == 1)
                
                Button("Add Dice", systemImage: "plus") {
                    numberOfDice += 1
                }.disabled(numberOfDice == 5)
                
                
            }.padding()
            
           

        }.frame(maxWidth: .infinity, maxHeight: .infinity).background(.appBackground).tint(.white)
    }
}

#Preview {
    ContentView()
}
