//
//  StandingsView.swift
//  Soccer Scores
//
//  Created by Min Thu Khine on 10/24/24.
//

import SwiftUI

struct StandingsView: View {

    var body: some View {
        
        VStack {
            HStack {
                Text("Standings")
                    .font(.largeTitle)
                    .bold()
                Spacer()
                Image("Premire League")
                    .resizable()
                    .frame(width: 50, height: 50)
            }
            .padding(.horizontal)
            
            ScrollView {
                VStack {
                    ForEach(1..<21) { index in
                        StandingRow(position: index)
                    }
                }
            }
            
            
        }
    }
}

#Preview {
    StandingsView()
}
