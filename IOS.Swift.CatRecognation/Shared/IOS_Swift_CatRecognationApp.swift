//
//  IOS_Swift_CatRecognationApp.swift
//  Shared
//
//  Created by Vadim Nikiforov on 9/1/23.
//

import SwiftUI

@main
struct IOS_Swift_CatRecognationApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView(classifier: ImageClassifier())
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
