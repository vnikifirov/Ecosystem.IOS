//
//  Weather.swift
//  IOS.Swift.Weather
//
//  Created by Vadim Nikiforov on 7/15/22.
//

import Foundation

enum WeatherType : CustomStringConvertible {
    case Sun
    case Rain
    case Cloud
    case Thounder
    case Snow
  
    var description : String {
      switch self {
          case WeatherType.Sun:
            return "Sun ☀️"
              
          case WeatherType.Cloud:
              return "Cloud ⛅"
              
          case WeatherType.Rain:
              return "Rain 🌦️"
              
          case WeatherType.Thounder:
              return "Thounder ⛈️"
          
          case WeatherType.Snow:
              return "Snow ❄️"
      }
    }
}

class WeatherEntity: ObservableObject {
    // Weather category
    var Category: String
    var Temperature: String
    var Time: String
    //var Time: Date
    var City: String
    
    init(Category: WeatherType, Temperature: Int, Time: Date, City: String) {
        self.Category = Category.description;
        self.Temperature = String(Temperature) + " °C"
        self.City = City
        
        // DateTime formatter - Stack Oveflow: https://stackoverflow.com/questions/31469172/show-am-pm-in-capitals-in-swift
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "hh:mm:ss a"
        self.Time = dateFormatter.string(from: Time)
        //Output: 12:16:45 PM
    }
}
