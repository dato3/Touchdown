//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Daulet on 19.11.2021.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
