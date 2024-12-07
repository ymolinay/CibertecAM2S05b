//
//  Persistence.swift
//  Session05b
//
//  Created by DAMII on 3/12/24.
//

import CoreData

struct PersistenceController {
    static let shared = PersistenceController()
    let container: NSPersistentContainer
    
    init() {
        container = NSPersistentContainer(name: "Session05b")
        container.loadPersistentStores { _, error in
            if let er = error as NSError? {
                fatalError("Error al conectarse a la BD, \(er)")
            }
        }
    }
    
    
}
