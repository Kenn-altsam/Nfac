//
//  ProductsService.swift
//  iOS 1.3
//
//  Created by Altynbek Kenzhe on 04.06.2025.
//

import Foundation

class ProductsService {
    private let networkClient = NetworkClient()
    
    func get() async throws -> [Product]{
        try await networkClient.get(relativePath: "/products")
    }
}
