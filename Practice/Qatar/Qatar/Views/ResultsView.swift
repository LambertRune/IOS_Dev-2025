//
//  ResultsView.swift
//  Qatar
//
//  Created by rune on 13/01/2026.
//

import SwiftUI

struct ResultsView: View {
    @Environment(WKResultsDataStore.self) private var wkResultsDataStore
    var selectedTeam: String
    @State private var state = ResultState()
    
    var body: some View {
        NavigationSplitView {
            List(wkResultsDataStore.getAllLocations(), id: \.self, selection: $state.selectedLocation) { location in
                Text(location)
            }
            .navigationTitle("WKQatar2022")
        } content: {
            ScoreListView(preferredTeam: selectedTeam, state: $state)
        } detail: {
            if let selectedResult = state.selectedWkResult {
                DetailGameView(result: selectedResult)
            } else {
                Text("Selecteer een wedstrijd")
                    .foregroundStyle(.secondary)
            }
        }
    }
}
