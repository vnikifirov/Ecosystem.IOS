//
//  WeatherService.swift
//  IOS.Swift.Weather
//
//  Created by Vadim Nikiforov on 8/18/22.
//

import Foundation

// Request to service
extension URLSession {
  func fetchData(at url: URL, completion: @escaping (Result<WeatherDTO, Error>) -> Void) {
        self.dataTask(with: url) { (data, response, error) in
          if let error = error {
            completion(.failure(error))
          }

          if let data = data {
            do {
              let location = try JSONDecoder().decode(WeatherDTO.self, from: data)
              completion(.success(location))
            } catch let decoderError {
              completion(.failure(decoderError))
            }
          }
        }.resume()
    }
}

class WeatherService
{
    var _URL = "https://api.openweathermap.org/data/2.5/weather?lat=55.751244&lon=37.618423&APPID=098f13a175ea9a256050bb4291febd32";
    
    func fetchData() -> WeatherDTO
    {
        let url = URL(string: _URL)!
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                return data
            } else if
                let error = error {
                fatalError("HTTP Request Failed \(error)")}
        }
        
        task.resume()
    }
}
