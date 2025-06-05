//
//  BaseButton.swift
//  iOS 1.3
//
//  Created by Altynbek Kenzhe on 05.06.2025.
//

import SwiftUI

struct BaseButton: View {
    let title: String
    var action: (() -> Void)? = nil

    var body: some View {
        if let action = action {
            Button(action: action) {
                Text(title)
                    .frame(width: 200, height: 50)
                    .background(Color.white)
                    .foregroundColor(.black)
                    .cornerRadius(10)
            }
        } else {
            Text(title)
                .frame(width: 200, height: 50)
                .background(Color.white)
                .foregroundColor(.black)
                .cornerRadius(10)
        }
    }
}
