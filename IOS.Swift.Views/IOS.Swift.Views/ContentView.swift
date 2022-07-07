//
//  ContentView.swift
//  IOS.Swift.Views
//
//  Created by Vadim Nikiforov on 6/13/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, I am Vadim!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}

struct WelcomeScreen: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            ContentView()
        } else {
            VStack
            {
                Image("nikifovadim.logo")
                    .font(.system(size: 80))
                    .foregroundColor(.red)
                Text("nikifovadim")
                    .font(Font.custom("New-York", size: 26))
            }
            .scaleEffect(size)
            .opacity(opacity)
            .onAppear {
                withAnimation(.easeIn(duration: 1.2)) {
                    self.size = 0.9
                    self.opacity = 1.0
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 10.0) {
                    self.isActive = true
                }
            }
        }
    }
}
