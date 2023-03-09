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
    @State private var size_max = 1
    @State private var animation = Animation.easeIn
    
    var body: some View {
        VStack
        {
            Text("Hi 👋 \(Name) ❤️!")
                .padding()
                .font(.system(size: 24, weight: .bold))
            Image("heart")
                .resizable()
                .aspectRatio(contentMode: .fit)
                //.frame(width: 200, height: 200)
                .scaleEffect(size_min)
                .animation(animation
                    .repeatForever(autoreverses: false))
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
            ValintineCard(Name: "Sue")
        }
        
    }
}
