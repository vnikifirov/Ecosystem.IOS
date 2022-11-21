//
//  WeatherContoller.swift
//  IOS.Swift.Weather
//
//  Created by Vadim Nikiforov on 10/24/22.
//

import Foundation

// Contoller is WEB application part of Model View Controller (MVC) app 
final class WeatherController : ObservableObject {
    @Published var _weatherService: WeatherService = WeatherService()
    
    func Fetch() -> WeatherDTO {
        return _weatherService.fetchData();
    }
}
