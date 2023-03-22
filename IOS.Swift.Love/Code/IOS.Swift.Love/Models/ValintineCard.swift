//
//  Card.swift
//  IOS.Swift.Love
//
//  Created by Vadim Nikiforov on 11/21/22.
//

import SwiftUI
import Foundation

struct ValintineCard: View {
    @State public var Name: String
    @State private var size_min = 0.8
    @State private var size_max = 1.0
    @State private var isAnimating = false
    
    var body: some View {
        VStack
        {
            Text("Hi 👋 \(Name) ❤️!")
                .padding()
                .font(.system(size: 24, weight: .bold))
            Image("heart")
                .resizable()
                .scaledToFit()
                .scaleEffect(self.isAnimating ? size_min: size_max)
                .animation(Animation.linear(duration: 1).repeatForever())
                .onAppear {
                    self.isAnimating = true
                }
            Text("I love you 👩‍❤️‍💋‍👨❤️")
                .padding()
                //.font(.custom("New-York", size: 24))
                .font(.system(size: 24, weight: .bold))
                
        }
    }
}


struct ValintineCard_Previews: PreviewProvider {
    static var previews: some View {
        ZStack
        {
            ValintineCard(Name: "Sue W.")
        }
        
    }
}
