//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Viktoriia Vinnykova on 01.05.2025.
//

import SwiftUI
import FirebaseCore

@main
struct ToDoListApp: App {
    init () {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
