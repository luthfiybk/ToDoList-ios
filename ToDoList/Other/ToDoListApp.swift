//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Luthfi Arya M on 08/08/24.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
