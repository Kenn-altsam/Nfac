//
//  BaseButton.swift
//  iOS 1.1
//
//  Created by Altynbek Kenzhe on 02.06.2025.
//

import SwiftUI

struct BaseButton: View {
    let title: String

    var body: some View {
        Text(title)
            .frame(width: 200, height: 50)
            .background(Color.white)
            .foregroundColor(.black)
            .cornerRadius(10)
    }
}
