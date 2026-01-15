//
//  WelcomeView.swift
//  Qatar
//
//  Created by rune on 13/01/2026.
//

import SwiftUI

struct WelcomeView: View {
    @Environment(WKResultsDataStore.self) private var wkResultsDataStore

    @State private var selectedTeam: String?
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Image(systemName: "soccerball")
                        .foregroundColor(.blue)
                    Text("WK QATAR 2020")
                        .font(.title)
                        .fontWeight(.bold)
                    Image(systemName: "soccerball")
                        .foregroundColor(.blue)
                }
                .padding(.top)
                
                Text("Select your favorite team...")
                    .foregroundStyle(.secondary)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                
                List(wkResultsDataStore.getallTeams(), id: \.self, selection: $selectedTeam) { team in
                    Text(team)
                }
                
                NavigationLink("Next") {
                    if let team = selectedTeam {
                        ResultsView(selectedTeam: team)
                    }
                }
                .buttonStyle(.borderedProminent)
                .disabled(selectedTeam == nil)
                .padding()
            }
            .navigationTitle("WKQatar2022")
        }
    }
}
