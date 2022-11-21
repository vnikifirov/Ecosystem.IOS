//
//  Card.swift
//  IOS.Swift.Love
//
//  Created by Vadim Nikiforov on 11/21/22.
//

import SwiftUI
import Foundation

struct Card: View {
    @State public var Name: String
    
    var body: some View {
        VStack
        {
            Text("Hi 👋 \(Name) ❤️!")
                .padding()
                .font(.system(size: 24, weight: .bold))
            Image("heart")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("I love you 👩‍❤️‍💋‍👨❤️")
                .padding()
                //.font(.custom("New-York", size: 24))
                .font(.system(size: 24, weight: .bold))
                
        }
    }
}
