//
//  ScoresCardView.swift
//  Soccer Scores
//
//  Created by Min Thu Khine on 10/24/24.
//

import SwiftUI

struct ScoresCardView: View {
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .fill(Color(red: 236/255, green: 242/255, blue: 245/255))
                .shadow(radius: 10)
                .padding()
            
            VStack {
                HStack {
                    Spacer()
                    VStack {
                       Image("Arsenal FC")
                            .resizable()
                            .frame(width: 50, height: 50)
                        Text("ARS")
                        Text("-")
                    }
                    Spacer()
                    Text("VS")
                    Spacer()
                    VStack {
                        Image("Newcastle United")
                             .resizable()
                             .frame(width: 50, height: 50)
                        Text("NWC")
                        Text("-")
                    }
                    Spacer()
                }
                
                Text("Scheduled @ 10:00 AM")
            }
        }
        .frame(height: 250)
    }
}

#Preview {
    ScoresCardView()
}



//#ECF2F5
//  .background(Color(red: 236/255, green: 242/255, blue: 245/255))
