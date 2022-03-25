//
//  DetailView.swift
//  Scrumdinger-SO
//
//  Created by Sergio Olivares on 3/25/22.
//

import SwiftUI

struct DetailView: View {
    var scrum: DailyScrum
    
    var body: some View {
        List {
             Section(header: Text("Meeting Info")) {
                 NavigationLink(destination: MeetingView()) {
                 Label("Start Meeting", systemImage: "timer")
                     .font(.headline)
                     .foregroundColor(.accentColor)
                     
                 }
                 HStack {
                     Label("Length", systemImage: "clock")
                     Spacer()
                     Text("\(scrum.lengthInMinutes) minutes")
                 }
                 .accessibilityElement(children: .combine)
                 HStack {
                     Label("Theme", systemImage: "paintpalette")
                     Spacer()
                     Text(scrum.theme.name)
                         .padding(4)
                         .foregroundColor(scrum.theme.accentColor)
                         .background(scrum.theme.mainColor)
                         .cornerRadius(4)
                 }
                 .accessibilityElement(children: .combine)
             }
            Section(header: Text("Attendees")){
                ForEach(scrum.attendees) { attendee in
                    Label(attendee.name, systemImage: "person")
                }
            }
            Text(String(scrum.status))
//            Toggle("status", isOn: self.$scrum.status)
//            Toggle(isOn: Binding<Bool>(
//                      get: { scrum.status },
//                      set: {
//                          scrum.status = $0
//                      })) {
//                      Text("status")
//                  }
         }
        .navigationTitle(scrum.title)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        DetailView(scrum: DailyScrum.sampleData[0])
        }
    }
}
