//
//  IOS_Swift_FlowerApp.swift
//  IOS.Swift.Flower
//
//  Created by Vadim Nikiforov on 4/5/23.
//

import SwiftUI

@main
struct IOS_Swift_FlowerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
