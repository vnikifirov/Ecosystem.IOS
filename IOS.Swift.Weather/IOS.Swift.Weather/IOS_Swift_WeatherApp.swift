//
//  IOS_Swift_WeatherApp.swift
//  IOS.Swift.Weather
//
//  Created by Vadim Nikiforov on 7/6/22.
//

import SwiftUI

@main
struct IOS_Swift_WeatherApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ZStack
                {
                    WeatherMainWinViews()
                        .navigationTitle("Weather")
                        .offset(y: -60)
                    NavigationLink(destination: AboutWinViews(), label: {
                        Text("Next screen").bold()
                            .frame(width: 280, height: 50)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    })
                }
            }
        }
    }
}


