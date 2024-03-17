//
//  ContentView.swift
//  Memorize2
//
//  Created by Emad Siddiq on 3/13/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView(isFaceUp: true)
            CardView(isFaceUp: false)
            CardView(isFaceUp: true)
        }
        .foregroundColor(.orange)
        .imageScale(.small)
        .padding()
    }
}

struct CardView: View {
    
    @State var isFaceUp = false
    
    var body: some View {
        
        ZStack {
            let base = Circle()
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)
            } else {
                base.fill()
            }
        }.onTapGesture {
            isFaceUp.toggle()
        }
    }
    
}



#Preview {
    ContentView()
}
