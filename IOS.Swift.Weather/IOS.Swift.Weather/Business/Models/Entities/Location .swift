//
//  Location .swift
//  IOS.Swift.Weather
//
//  Created by Vadim Nikiforov on 7/6/22.
//

import Foundation

struct LocationEnity {
    // X axis
    var Longitude: Double = 0.0
    
    // Y axis
    var Latitude: Double = 0.0

    init(Longitude: Double, Latitude: Double) {
        self.Longitude = Longitude;
        self.Latitude = Latitude;
    }
}
