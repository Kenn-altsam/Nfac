//
//  Product.swift
//  iOS 1.3
//
//  Created by Altynbek Kenzhe on 04.06.2025.
//

import Foundation

struct Product: Identifiable, Decodable {
    let id: Int
    let title: String
    let price: Float
    let description: String
    let category: String
    let image: URL
    let rating: Rating
}

extension Product{
    struct Rating: Decodable {
        let rate: Float
        let count: Int
    }
}


