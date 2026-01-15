//
//  ScoreDetailView.swift
//  Qatar
//
//  Created by rune on 14/01/2026.
//

import SwiftUI

struct ScoreDetailView: View {
    var preferredTeam: String
    var result: WKResult
    
    private var isPreferredTeamHome: Bool {
        result.homeTeam == preferredTeam
    }
    
    private var isPreferredTeamAway: Bool {
        result.awayTeam == preferredTeam
    }
    
    var body: some View {
        HStack {
            // Home Team
            Text(result.homeTeam)
                .fontWeight(isPreferredTeamHome ? .bold : .regular)
                .foregroundColor(isPreferredTeamHome ? .blue : .primary)
            
            Spacer()
            
            // Score
            if let homeScore = result.homeTeamScore, let awayScore = result.awayTeamScore {
                Text("\(homeScore)")
                    .fontWeight(.bold)
                Text("-")
                Text("\(awayScore)")
                    .fontWeight(.bold)
            } else {
                Text("X - X")
                    .foregroundStyle(.secondary)
            }
            
            Spacer()
            
            // Away Team
            Text(result.awayTeam)
                .fontWeight(isPreferredTeamAway ? .bold : .regular)
                .foregroundColor(isPreferredTeamAway ? .blue : .primary)
        }
        .padding(.vertical, 4)
    }
}
