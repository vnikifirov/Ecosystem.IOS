//
//  Row.swift
//  IOS.Swift.DataDuplicatesObjects
//
//  Created by Vadim Nikiforov on 11/10/22.
//

import Foundation

struct Row {
    var Title: String;
    var Activity: ActivityType;

    init(Title: String, Activity: ActivityType) {
        self.Title = Title;
        self.Activity = Activity;
    }
}
