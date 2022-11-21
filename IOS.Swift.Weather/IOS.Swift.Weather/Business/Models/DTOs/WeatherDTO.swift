//
//  WeatherDTO.swift
//  IOS.Swift.Weather
//
//  Created by Vadim Nikiforov on 8/22/22.
//

/*
{
    "coord": {
        "lon": 37.6184,
        "lat": 55.7512
    },
    "weather": [
        {
            "id": 804,
            "main": "Clouds",
            "description": "overcast clouds",
            "icon": "04d"
        }
    ],
    "base": "stations",
    "main": {
        "temp": 293.25,
        "feels_like": 292.49,
        "temp_min": 291.22,
        "temp_max": 295.55,
        "pressure": 1023,
        "humidity": 45,
        "sea_level": 1023,
        "grnd_level": 1007
    },
    "visibility": 10000,
    "wind": {
        "speed": 3.66,
        "deg": 130,
        "gust": 8.91
    },
    "clouds": {
        "all": 100
    },
    "dt": 1661147357,
    "sys": {
        "type": 2,
        "id": 2018597,
        "country": "RU",
        "sunrise": 1661134478,
        "sunset": 1661187044
    },
    "timezone": 10800,
    "id": 524901,
    "name": "Moscow",
    "cod": 200
}
*/

import Foundation

struct WeatherDTO: Decodable {
    let Coord: Coord
    let Weather: [Weather]
    let Base: String
    let Main: Main
    let Visibility: Int
    let Wind: Wind
    let Clouds: Clouds
    let Dt: Int
    let Sys: Int
    let Timezone: Int
    let Id: Int
    let Name: String
    let Cod: Int
}

struct Coord: Decodable {
    // X axis
    let Longitude: Double
    
    // Y axis
    let Latitude: Double
}

struct Weather: Decodable {
     let Id: Int
     let Main: String
     let Description: String
     let Icon: String
}

struct Main: Decodable {
    let Iemp: Double
    let Feels_like: Double
    let Temp_min: Double
    let Temp_max: Double
    let Pressure: Int
    let Humidity: Int
    let Sea_level: Int
    let Grnd_level: Int
}

struct Wind: Decodable {
    let Speed: Double
    let Deg: Int
    let Gust: Double
}

struct Clouds: Decodable {
    let all: Int
}

struct Sys: Decodable {
    let `Type`: Int
    let Id: Int
    let Country: String
    let Sunrise: Int64
    let Sunset: Int64
}
