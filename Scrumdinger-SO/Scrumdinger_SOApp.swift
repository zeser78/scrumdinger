//
//  Scrumdinger_SOApp.swift
//  Scrumdinger-SO
//
//  Created by Sergio Olivares on 3/25/22.
//

import SwiftUI

@main
struct Scrumdinger_SOApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
            ScrumsView(scrums: DailyScrum.sampleData)
            }
        }
    }
}
