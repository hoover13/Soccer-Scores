//
//  ScoresView.swift
//  Soccer Scores
//
//  Created by Min Thu Khine on 10/24/24.
//

import SwiftUI

struct ScoresView: View {
    @State private var selectedSegment = 0
    let segments = ["Yesterday", "Today", "Tomorrow"]
    
    var body: some View {
        
        VStack {
            HStack {
                Text("Games")
                    .font(.largeTitle)
                    .bold()
                Spacer()
                Image("Premire League")
                    .resizable()
                    .frame(width: 50, height: 50)
            }
            
            // This is Segmented Picker Control
            Picker("Select Segment", selection: $selectedSegment) {
                ForEach(0..<segments.count) { index in
                    Text(segments[index]).tag(index)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
            if selectedSegment == 0 {
                ScrollView {
                    VStack {
                        ForEach(0..<5) { index in
                            ScoresCardView()
                        }
                    }
                }
            } else if selectedSegment == 1 {
                Text("Second Segment Selected")
            } else {
                Text("Third Segment Selected")
            }
        }
        .padding()
    }
}

#Preview {
    ScoresView()
}
