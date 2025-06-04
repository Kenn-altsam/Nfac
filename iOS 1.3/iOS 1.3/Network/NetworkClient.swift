//
//  NetworkClient.swift
//  iOS 1.3
//
//  Created by Altynbek Kenzhe on 04.06.2025.
//

import Foundation

class NetworkClient {
    private var BaseURL = "https://fakestoreapi.com"
    
    func get<Response: Decodable>(
        relativePath: String
    ) async throws -> Response {
        guard
            let url = URL(string: BaseURL + relativePath)
        else{
            throw URLError(.badURL)
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        let (data, _) = try await URLSession.shared.data(for: request)
        let response = try JSONDecoder().decode(Response.self, from: data)
        return response
    }
}
