//
//  WelcomeScreen.swift
//  IOS.Swift.Weather
//
//  Created by Vadim Nikiforov on 11/4/22.
//

import SwiftUI
import Foundation

struct WelcomeScreen: View
{
    @State private var isActive = false
    @State private var size = 0.6
    @State private var opacity = 0.6
    
    private _data: WeatherDTO;
    
    init(weatherController: WeatherController()
    {
        self._data = weatherController.Fetch()
    }
    
    var body: some View
    {
        if isActive
        {
            //WeatherMainWinViews()
        }
        else
        {
            VStack
            {
                //Image("welcome_sceen")
                Text("Weather app")
                    .font(Font.custom("New-York", size: 26))
                    .fontWeight(.thin)
                
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
            .onAppear()
        }
    }
}
