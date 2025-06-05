//
//  ContentView.swift
//  iOS 1.3
//
//  Created by Altynbek Kenzhe on 04.06.2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ProductsViewModel()
    
    var body: some View {
        ZStack{
            LinearGradient(colors: [.blue, .lightBlue],
                           startPoint: .leading,
                           endPoint: .trailing)
                            .ignoresSafeArea()
            
            VStack{
                if viewModel.isLoading {
                    ProgressView()
                }
                else if let errorDescription = viewModel.errorDescription {
                    Text(errorDescription)
                }
                else{
                    if viewModel.products.isEmpty{
                        VStack{
                            Image(systemName: "xmark.circle.fill")
                            Text("Products not found")
                        }
                    }
                    else{
                        VStack(){
                            Text("Clothes")
                                .font(.title)
                                .foregroundColor(.white)
                            ZStack{
                                List(viewModel.products){ product in
                                    HStack(spacing: 12){
                                        // images has three phases
                                        // 1. Success 2. Error 3. Still Loading
                                        AsyncImage(url: product.image) { phase in
                                            if let image = phase.image{
                                                image
                                                    .resizable()
                                                    .frame(width: 120, height: 120)
                                                    .clipped(antialiased: true)
                                            }
                                            else{
                                                RoundedRectangle(cornerRadius: 12)
                                                    .frame(width: 120, height: 120)
                                                
                                            }
                                        }
                                        VStack{
                                            Text("Name: \(product.title)")
                                            Text(String(format: "$%.2f", product.price))
                                                .frame(alignment: .leading)
                                        }
                                    }
                                    .frame(maxWidth: .infinity, minHeight: 120)
                                    .padding()
                                    .background(
                                        RoundedRectangle(cornerRadius: 12)
                                            .fill(Color.gray.opacity(0.1))
                                            .shadow(radius: 8)
                                    )
                                    .listRowSeparator(.hidden)
                                }
                                .scrollContentBackground(.hidden)
                                .padding()
                                .cornerRadius(12)
                                
                                Spacer()
                                
                                
                            }
                            .cornerRadius(20)
                        }
                        VStack {
                                CustomTabBarView()
                        }
                        .padding(4)
                    }
                }
            }
            .task{
                Task{
                    await viewModel.fetchProducts()
                }
            }
        }
        
    }
}



#Preview {
    ContentView()
}


