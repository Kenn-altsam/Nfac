//
//  ContentView.swift
//  iOS 1.2
//
//  Created by Altynbek Kenzhe on 03.06.2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ViewModel()
    var body: some View {
        
        NavigationView(){
            VStack{
                Text("To Do App")
                    .font(.title)
                
                VStack{
                    VStack{
                        Group{
                            TextField("Task", text: $viewModel.model.task)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                        }
                        .shadow(radius: 5)
                        
                        Button(action: {
                            viewModel.addTask()
                            viewModel.model.task = ""
                        }) {
                            Text("Add a task").padding(12)
                                .background(viewModel.model.task.isEmpty ? Color.gray : Color.blue.opacity(0.8))
                                .foregroundStyle(.white)
                                .clipShape(RoundedRectangle(cornerRadius: 100))
                                .shadow(radius: 5)
                        }
                    }
                    .padding()
                    
                    
                    
                }.background(Color.gray.opacity(0.8))
                
                List{
                    ForEach(viewModel.model.tasks) { task in
                        HStack {
                            Image(systemName: task.isCompleted ? "checkmark.circle.fill" : "checkmark.circle")
                                .foregroundColor(.green)
                                .onTapGesture {
                                    viewModel.toggleTaskCompletion(task)
                                }
                            Text(task.text)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

