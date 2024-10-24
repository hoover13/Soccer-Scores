//
//  StandingRow.swift
//  Soccer Scores
//
//  Created by Min Thu Khine on 10/24/24.
//

import SwiftUI

struct StandingRow: View {
    @State var position: Int
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color(red: 236/255, green: 242/255, blue: 245/255))
                .shadow(radius: 1)
                .padding(.horizontal)
            
            HStack {
                Text(String(position))
                
                Image("Liverpool FC")
                    .resizable()
                    .frame(width: 40, height: 40)
                
                Text("Liverpool FC")
                
                Spacer()
                
                Text("21")
            }
            .padding(.horizontal, 30)
        }
        .frame(height: 80)
    }
}

#Preview {
    StandingRow(position: 1)
}
