//
//  DailyScrum.swift
//  Scrumdinger-SO
//
//  Created by Sergio Olivares on 3/25/22.
//

import Foundation

struct DailyScrum: Identifiable {
    let id: UUID
    var title: String
//    var attendees: [String]
    var attendees: [Attendee]
    var lengthInMinutes: Int
    var theme: Theme
    var status: Bool
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme, status: Bool) {
        self.id = id
        self.title = title
//        self.attendees = attendees
        self.attendees = attendees.map { Attendee(name: $0 ) }
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
        self.status = status
        
    }
}

extension DailyScrum {
    struct Attendee: Identifiable {
        let id : UUID
        var name: String
        
        init(id: UUID = UUID(), name : String) {
            self.id = id
            self.name = name
        }
    }
    
    struct Data {
        var title: String = ""
        var attendees: [Attendee] = []
        var lengthInMinutes: Double = 5
        var themes: Theme = .seafoam
        var status: Bool = false
    }
    
    var data: Data {
        Data(title: title, attendees: attendees, lengthInMinutes: Double(lengthInMinutes), themes: theme, status: status)
    }

}

extension DailyScrum {
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(title: "Design", attendees: ["Cathy", "Daisy", "Simon", "Jonathan"], lengthInMinutes: 10, theme: .yellow, status: false),
        DailyScrum(title: "App Dev", attendees: ["Katie", "Gray", "Euna", "Luis", "Darla"], lengthInMinutes: 5, theme: .orange, status: false),
        DailyScrum(title: "Web Dev", attendees: ["Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"], lengthInMinutes: 5, theme: .poppy, status: true)
    ]
}
