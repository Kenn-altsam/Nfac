//
//  ContentView.swift
//  iOS 1.1
//
//  Created by Altynbek Kenzhe on 02.06.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                backgroundStyle()
                
                VStack {
                    Spacer()
                    
                    Image("image_profile")
                        .imageScale(.large)
                        .frame(width: 170, height: 170)
                        .cornerRadius(200)
                    Text("Altynbek Kenzhe")
                        .foregroundStyle(Color("Orange"))
                        .font(.headline)
                        .padding()
                    
                    
                    
                    HStack(spacing: 35){
                        VStack{
                            Text("Age")
                                .font(.title3)
                            Text("19")
                        }
                        
                        VStack{
                            Text("Location")
                                .font(.title3)
                            Text("Almaty")
                        }
                        
                        VStack{
                            Text("Followers")
                                .font(.title3)
                            Text("155")
                        }
                                
                    }
                    
                    Spacer()
                    
                    Text("Go to Profile")
                        .foregroundStyle(Color(.black))
                        .font(.title2)
                    
                    NavigationLink(destination: ProfileView()) {
                        BaseButton(title: "Click")
                    }

                    
                    Spacer()
                }
                
                
            }
        }
    }
}

// Setting the background color of Lightblue and ignoring the safe area
extension View{
    func backgroundStyle() -> some View{
        Color("Lightblue")
            .ignoresSafeArea(.all)
    }
}

#Preview {
    ContentView()
}
