//
//  UurroosterDataStore.swift
//  Uurrooster
//
//  Created by Dirk Hostens on 14/10/2022.
//

import Foundation

@Observable
class UurroosterDataStore {
    var uurrooster : [EventModel]
    
    init() {
        uurrooster=[EventModel]()
    }
    
    func getEvents() -> [EventModel]{
        sort()
        return uurrooster
    }
    
    private func sort(){
            uurrooster.sort { ur1, ur2 in
                ur1.startDateTime > ur2.startDateTime
            }
        }
        
        func addEvent(event: EventModel ){
            event.id = UUID().uuidString
            uurrooster.append(event)
            sort()
        }
        
        func updateEvent(event: EventModel ){
            for model in uurrooster {
                if event.id.elementsEqual(model.id) {
                    model.allDay = event.allDay
                    model.title = event.title
                    model.location = event.location
                    model.endDateTime = event.endDateTime
                    model.startDateTime = event.startDateTime
                    model.type = event.type
                }
            }
            sort()
        }
    
    func deleteEvent(id: String) {
            uurrooster = uurrooster.filter({ eventInList in
                return !eventInList.id.elementsEqual(id)
            })
        }
    
    func getEvent(id: String) -> EventModel {
        let filteredEvent = uurrooster.filter { EventModel in
            return EventModel.id.elementsEqual(id)
        }
        if(filteredEvent.count>0){
            return filteredEvent[0]
        }
        else{
            return EventModel()
        }
        
    }
    
    func loadData() async {
        //simulate async call
        do {
                   print("⏳ Simulating 2-second load delay...")
                   try await Task.sleep(for: .seconds(2)) // Simulate long load
                   let data: [EventModelJson] = try load("uurrooster.json")
                   uurrooster = data.map({ evenModelJson in
                       evenModelJson.toEventModel()
                   })
                   sort()
                   print("✅ Data loaded successfully.")
                   
               } catch {
                   print("❌ Failed to load uurrooster:", error)
                   uurrooster = [EventModel]()
               }
    }

}

private struct EventModelJson: Hashable, Codable, Identifiable {
    var id:String = ""
    var allDay: Bool = false
    var title: String = ""
    var location: String? = nil
    var type: String = ""
    var startDateTime: String = ""
    var endDateTime: String = ""
    
    var formattedStartDateTime: String {
        get {
            return startDateTime.replacingOccurrences(of: "T", with: " ")
        }
    }
    var formattedEndDateTime: String {
        get {
            return endDateTime.replacingOccurrences(of: "T", with: " ")
        }
    }
    var formattedAllDayStartTime: String {
        get {
            return String(startDateTime.split(separator: "T")[0])
        }
    }
    func getEventInput() -> (title: String, location: String, allDay: Bool, startDate: Date, endDate: Date, type: Int ) {
        return (self.title, self.location == nil ? "" : location!, allDay, DateUtil.getDate(string: startDateTime), DateUtil.getDate(string: endDateTime), type.elementsEqual("academic") ? 0 : 1)
    }
    
    func toEventModel() -> EventModel {
        let eventModel = EventModel()
        eventModel.id = self.id
        eventModel.allDay = self.allDay
        eventModel.title = self.title
        eventModel.location = self.location ?? ""
        eventModel.startDateTime = DateUtil.getDate(string: self.startDateTime)
        eventModel.endDateTime = DateUtil.getDate(string: self.endDateTime)
        if self.type.elementsEqual("academic") {
            eventModel.type = 0
        } else {
            eventModel.type = 1
        }
        return eventModel
    }
}
