//
//  ViewModel.swift
//  iOS 1.3
//
//  Created by Altynbek Kenzhe on 04.06.2025.
//

import Foundation

class ProductsViewModel: ObservableObject{
    @Published var isLoading = false
    @Published var products: [Product] = []
    @Published var errorDescription: String?
    
    private let productsService = ProductsService()
    
    func fetchProducts() async {
        // whenever we are fetching the data, the isLoading will be true and will be false when the retrieving is done
        isLoading = true
        do{
            products = try await productsService.get()
        } catch{
            errorDescription = error.localizedDescription
        }
        isLoading = false
    }
}

