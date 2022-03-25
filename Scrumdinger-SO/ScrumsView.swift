//
//  ScrumsView.swift
//  Scrumdinger-SO
//
//  Created by Sergio Olivares on 3/25/22.
//

import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
    var body: some View {
        List {
            ForEach(scrums) { scrum in
                NavigationLink(destination: DetailView(scrum: scrum)) {
                    CardView(scrum: scrum)
                      
                }
                .listRowBackground(scrum.theme.mainColor)
          
            }
        }
        .navigationTitle("Daily Scrums")
        .toolbar {
            Button(action: {}) {
                Image(systemName: "plus")
            }
            .accessibilityLabel("New Scrums")
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
