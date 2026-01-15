//
//  ScoreListView.swift
//  Qatar
//
//  Created by rune on 13/01/2026.
//

import SwiftUI

struct ScoreListView: View {
    @Environment(WKResultsDataStore.self) private var wkResultsDataStore
    var preferredTeam: String
    @Binding var state: ResultState
    
    var body: some View {
        if let location = state.selectedLocation {
            List(wkResultsDataStore.getAllResultsByLocation(location: location), id: \.self, selection: $state.selectedWkResult) { wkResult in
                ScoreDetailView(preferredTeam: preferredTeam, result: wkResult)
            }
        } else {
            Text("Selecteer een stadion")
                .foregroundStyle(.secondary)
        }
    }
}
