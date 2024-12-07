//
//  Session05bApp.swift
//  Session05b
//
//  Created by DAMII on 3/12/24.
//

import SwiftUI

@main
struct Session05bApp: App {
    let persistenceController = PersistenceController.shared
   
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(
                    \.managedObjectContext,
                     persistenceController.container.viewContext
                )
        }
    }
}
