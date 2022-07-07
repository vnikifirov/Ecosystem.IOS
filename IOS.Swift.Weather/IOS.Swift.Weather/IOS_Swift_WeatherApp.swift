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
            ZStack
            {
                BackgroundView()
                WeclomeTextView()
            }
        }
    }
}
