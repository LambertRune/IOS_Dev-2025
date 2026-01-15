//
//  DetailGameView.swift
//  Qatar
//
//  Created by rune on 13/01/2026.
//

import SwiftUI

struct DetailGameView: View {
    var result: WKResult
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            // Date
            Text(result.dateUTC)
                .font(.subheadline)
                .foregroundStyle(.secondary)
            
            // Stadium name
            Text(result.location)
                .font(.title2)
                .fontWeight(.semibold)
            
            // Teams and Score
            HStack(spacing: 20) {
                VStack {
                    Text(result.homeTeam)
                        .font(.headline)
                    Text("\(result.homeTeamScore ?? 0)")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                }
                
                Text("X")
                    .font(.title)
                    .foregroundStyle(.secondary)
                
                VStack {
                    Text(result.awayTeam)
                        .font(.headline)
                    Text("\(result.awayTeamScore ?? 0)")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                }
            }
            .frame(maxWidth: .infinity)
            
            // Round info
            if let group = result.group {
                Text("Round: \(group)")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            } else {
                Text("Round: Knockout")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
            
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    DetailGameView(result: WKResult(
        matchNumber: 1,
        roundNumber: 1,
        dateUTC: "2022-11-27 13:00:00Z",
        location: "Al Thumama Stadium",
        homeTeam: "Belgium",
        awayTeam: "Morocco",
        group: "Group F",
        homeTeamScore: 0,
        awayTeamScore: 2
    ))
}
