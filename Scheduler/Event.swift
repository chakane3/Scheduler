//
//  Event.swift
//  Scheduler
//
//  Created by Chakane Shegog on 11/12/21.
//

import Foundation

struct Event {
    var date: Date
    var name: String
    
    static func getTestData() -> [Event] {
        var events = [Event]()
        let eventNames = ["Code", "Unit Assesment", "iOS Soho", "Lyft Event", "SWE interview"]
        
        for eventName in eventNames {
            let event = Event(date: Date(), name: eventName)
            events.append(event)
        }
        return events
    }
}
