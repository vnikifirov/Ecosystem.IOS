//
//  WeatherMainWinViews.swift
//  IOS.Swift.Weather
//
//  Created by Vadim Nikiforov on 11/4/22.
//

import Foundation
import SwiftUI

struct WeatherMainWinViews: View
{
    var body: some View
    {
        // Z axis
        ZStack
        {
            Image("app_background")
            
            // Y axis
            VStack
            {
                NavigationLink(destination: AboutWinViews(), label:
                {
                    Text("Next screen")
                        .bold()
                        .frame(width: 280, height: 50)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                })
            }
        }
    }
}
