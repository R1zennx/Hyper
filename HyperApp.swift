//
//  HyperApp.swift
//  Hyper
//
//  Created by Kevin Treial on 08.04.2023.
//

import SwiftUI
import Firebase

@main
struct HyperApp: App {
   @StateObject var dataManager = DataManager()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(dataManager)
        }
    }
}
