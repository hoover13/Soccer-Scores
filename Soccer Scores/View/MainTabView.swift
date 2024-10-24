//
//  ContentView.swift
//  Soccer Scores
//
//  Created by Min Thu Khine on 10/23/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        
        TabView {
            
            Tab("Scores", systemImage: "sportscourt") {
                ScoresView()
            }
            
            Tab("Standings", systemImage: "list.number") {
                StandingsView()
            }
            
            Tab("Settings", systemImage: "gearshape") {
                SettingsView()
            }
        }
    }
}

#Preview {
    MainTabView()
}
