//
//  WelcomeCard.swift
//  Love
//
//  Created by Vadim Nikiforov on 11/22/22.
//

import SwiftUI
import Foundation

struct WelcomeCard: View {
    @State private var _name: String = ""
   
    var body: some View {
        NavigationView {
            // 1. Vertical stack
            VStack {
                // 3. Text
                Text("Enter your name:")
                    .fontWeight(.bold)
                    .font(.title)
                    .padding()
                    //.background(Color.black)
                    //.cornerRadius(40)
                    .foregroundColor(.black)
                    .padding(10)
     
                // 4. Name field
                TextField("Your name", text: $_name)
                    //.fontWeight(.bold)
                    .font(.title)
                    .padding()
                    //.background(Color.black)
                    //.cornerRadius(40)
                    //.foregroundColor(.white)
                    .padding(10)
                
                // 5. Continue
                NavigationLink(destination: ValintineCard(Name: _name)) {
                    Text("👉 Continue 👈")
                            .fontWeight(.bold)
                            .font(.title)
                            .padding()
                            .background(LinearGradient(gradient: Gradient(colors: [Color.gray, Color.black]), startPoint: .leading, endPoint: .trailing))
                            .cornerRadius(40)
                            .foregroundColor(.white)
                    }
                }
        }
    }
}
/*
struct WelcomeCard_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeCard()
    }
}
*/
