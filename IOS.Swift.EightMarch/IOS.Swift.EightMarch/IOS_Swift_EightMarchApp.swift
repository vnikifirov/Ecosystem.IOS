//
//  IOS_Swift_EightMarchApp.swift
//  IOS.Swift.EightMarch
//
//  Created by Vadim Nikiforov on 3/8/23.
//

import SwiftUI

@main
struct IOS_Swift_EightMarchApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
