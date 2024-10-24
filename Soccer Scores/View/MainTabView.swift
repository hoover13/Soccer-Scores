//
//  ContentView.swift
//  Soccer Scores
//
//  Created by Min Thu Khine on 10/23/24.
//

import SwiftUI

struct MainTabView: View {
    
    let dataService = DataService()
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
        .onAppear {
            Task {
                await dataService.callAPI()
            }
        }
    }
}

#Preview {
    MainTabView()
}
