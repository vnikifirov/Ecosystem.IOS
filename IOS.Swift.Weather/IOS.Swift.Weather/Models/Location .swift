//
//  Location .swift
//  IOS.Swift.Weather
//
//  Created by Vadim Nikiforov on 7/6/22.
//

import Foundation

struct Location {
    // X axis
    var Longitude: Double = 0
    
    // Y axis
    var Latitude: Double = 0

    init(Longitude: Double, Latitude: Double) {
        self.Longitude = Longitude;
        self.Latitude = Latitude;
    }
}

var coordinatesLA = Location(Longitude: -118.243685,  Latitude: 34.052234)
