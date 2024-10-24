//
//  DataService.swift
//  Soccer Scores
//
//  Created by Min Thu Khine on 10/24/24.
//

import Foundation

struct DataService {
    
    let apiKey: String = "56cd205a3c4c42d68b8298fb3a917f4a"
    
    func callAPI() async {
        // Create URL
        guard let url = URL(string: "https://api.sportsdata.io/v4/soccer/scores/json/CompetitionDetails/EPL?key=\(apiKey)") else {
            print("Invalid URL")
            return
        }
        
        do {
            // Fetch data asynchronously
            let (data, response) = try await URLSession.shared.data(from: url)
            
            // Check the HTTP response status code
            if let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 {
                print("Data received successfully")
                
                // Convert Data to JSON object and pretty print it
                if let json = try? JSONSerialization.jsonObject(with: data, options: []) {
                    if let jsonData = try? JSONSerialization.data(withJSONObject: json, options: .prettyPrinted),
                       let jsonString = String(data: jsonData, encoding: .utf8) {
                        print("JSON Response:\n\(jsonString)")
                    }
                }
            } else {
                print("Failed with status code: \((response as? HTTPURLResponse)?.statusCode ?? 0)")
            }
        } catch {
            print("Error: \(error.localizedDescription)")
        }
    }
}
