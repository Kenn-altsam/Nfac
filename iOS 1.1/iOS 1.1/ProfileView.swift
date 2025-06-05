//
//  ProfileView.swift
//  iOS 1.1
//
//  Created by Altynbek Kenzhe on 03.06.2025.
//

import SwiftUI
struct ProfileView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var closeButtonClicked = false
    
    var body: some View{
        ZStack{
            backgroundStyle()
            VStack{
                Image("image_profile")
                    .imageScale(.large)
                    .frame(width: 250, height: 250)
                    .cornerRadius(200)
                Text("Profile")
                    .padding()
                    .foregroundStyle(Color.black)
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                    .padding()
                    .foregroundStyle(Color.black)
                
                BaseButton(title: "Close") {
                    dismiss()
                }
            }
            
            
                .foregroundStyle(Color.white)
        }
        .navigationBarBackButtonHidden(true)
    }
}

