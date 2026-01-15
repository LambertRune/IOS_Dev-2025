//
//  WKResultsDataStore.swift
//  Qatar
//
//  Created by rune on 13/01/2026.
//

import Foundation

@Observable
class WKResultsDataStore {
    var results: [WKResult]
    
    init(results: [WKResult]) {
        self.results = load("WKResultsQatar.json")
    }
    
    func getallTeams() -> [String]{
        let resultFiltered = results.filter { WKResult in
            WKResult.group != nil
        }
        let teams = resultFiltered.map { wkResult in
            wkResult.awayTeam
        }
        
        return Array(Set(teams)).sorted()
    }
    
    func getAllLocations() -> [String] {
            print("getAllLocations")
            let resultFilterd = results.filter { wkResult in
                wkResult.group != nil
            }
            let  locations = resultFilterd.map { wkresult in
                wkresult.location
            }
            return Array(Set(locations)).sorted()
        }
        
        func getAllResultsByLocation(location: String) -> [WKResult] {
            print("getAllResultsByLocation")
            var resultsFiltered = results.filter { wkResult in
                wkResult.location.elementsEqual(location)
            }
            resultsFiltered.sort { el1, el2 in
                el1.dateUTC < el2.dateUTC
            }
            return resultsFiltered
            
        }
}
