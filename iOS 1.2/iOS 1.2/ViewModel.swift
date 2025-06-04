//
//  ViewModel.swift
//  iOS 1.2
//
//  Created by Altynbek Kenzhe on 03.06.2025.
//

import SwiftUI

class ViewModel: ObservableObject {
    @Published var model = Model()
    
    func addTask() {
        if !model.task.isEmpty {
            model.tasks.append(Task(text: model.task))
            model.task = ""
        }
    }
    
    func toggleTaskCompletion(_ task: Task) {
        if let index = model.tasks.firstIndex(where: { $0.id == task.id }) {
            model.tasks[index].isCompleted.toggle()
        }
    }
}


