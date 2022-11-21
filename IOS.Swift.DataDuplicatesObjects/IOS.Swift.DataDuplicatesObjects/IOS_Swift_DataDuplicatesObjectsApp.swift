//
//  IOS_Swift_DataDuplicatesObjectsApp.swift
//  IOS.Swift.DataDuplicatesObjects
//
//  Created by Vadim Nikiforov on 11/9/22.
//

import SwiftUI

@main
struct IOS_Swift_DataDuplicatesObjectsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
