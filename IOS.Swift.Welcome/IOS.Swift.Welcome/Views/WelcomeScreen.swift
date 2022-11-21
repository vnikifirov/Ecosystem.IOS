//
//  WelcomeScreen.swift
//  IOS.Swift.Welcome
//
//  Created by Vadim Nikiforov on 11/8/22.
//

import Foundation
import SwiftUI

struct WelcomeScreen: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View
    {
        if isActive
        {
            ContentView()
        }
        else
        {
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
            .onAppear
            {
                withAnimation(.easeIn(duration: 1.2))
                {
                    self.size = 0.9
                    self.opacity = 1.0
                }
            }
            .onAppear
            {
                DispatchQueue.main.asyncAfter(deadline: .now() + 10.0)
                {
                    self.isActive = true
                }
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            WelcomeScreen()
        }
    }

}
