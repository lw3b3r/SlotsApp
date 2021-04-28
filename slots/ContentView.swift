//
//  ContentView.swift
//  slots
//
//  Created by Lin on 4/28/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var credits = 1000
    @State var slot1 = 1
    @State var slot2 = 1
    @State var slot3 = 1
    
    // apple cherry star
    
    var body: some View {
        
        VStack(spacing: 20.0) {
            
            Spacer()
            
            Text("SwiftUI Slots!").font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/).padding(.top, 20.0)
            
            Spacer()
            
            Text("Credits: \(credits)")
                .padding(.top, 20.0)
            
            Spacer()
            
            HStack {
                Image("fruit\(slot1)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Image("fruit\(slot2)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Image("fruit\(slot3)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            
            Spacer()
            
            Button("Spin", action: {
                // Randomize slots
                slot1 = Int.random(in: 1...3)
                slot2 = Int.random(in: 1...3)
                slot3 = Int.random(in: 1...3)
                
                if slot1 == slot2 && slot2 == slot3 {
                    credits += 25
                } else {
                    credits -= 25
                }
                                
            }).padding(.all, 10.0)
            .padding([.leading,.trailing], 40.0)
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.pink/*@END_MENU_TOKEN@*/)
            .cornerRadius(25.0)
            .accentColor(.white)
            .font(.system(size: 18, weight: .bold, design: .default))
            
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
