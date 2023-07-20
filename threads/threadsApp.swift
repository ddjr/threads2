//
//  threadsApp.swift
//  threads
//
//  Created by David Daly on 7/19/23.
//

import SwiftUI
import FirebaseCore

@main
struct threadsApp: App {
    init() {
        FirebaseApp.configure()
    }

    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
