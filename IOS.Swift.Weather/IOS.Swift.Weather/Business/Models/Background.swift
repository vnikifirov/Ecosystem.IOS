//
//  Background.swift
//  IOS.Swift.Weather
//
//  Created by Vadim Nikiforov on 7/13/22.
//

import Foundation

class Background: ObservableObject {
    // Background Image of application
    var Image: String

    init(Image: String) {
        self.Image = Image;
    }
}
