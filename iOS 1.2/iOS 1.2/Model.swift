//
//  Model.swift
//  iOS 1.2
//
//  Created by Altynbek Kenzhe on 03.06.2025.
//

import Foundation

struct Task: Identifiable {
    let id = UUID()
    var text: String
    var isCompleted: Bool = false
}

struct Model {
    var task: String = ""
    var tasks: [Task] = []
}
