//
//  CheckBoxContentView.swift
//  DiffForm
//
//  Created by Bhumika Patel on 15/12/22.
//

import SwiftUI

struct Task: Identifiable{
    let id = UUID()
    let name: String
    var isCompleted: Bool
}

struct CheckBoxContentView: View {
    @State private var tasks = [Task(name: "Computer bye", isCompleted: false),Task(name: "set sound", isCompleted: false)]
    var body: some View {
        VStack{
            List($tasks) { $task in
               TaskCellView(task: $task)
                
            }
            Text("Completed tasks count: \(tasks.filter{ $0.isCompleted }.count)")
        }
    }
}

struct CheckBoxContentView_Previews: PreviewProvider {
    static var previews: some View {
        CheckBoxContentView()
    }
}

struct TaskCellView: View{
    @Binding var task: Task
    var body: some View{
        HStack{
            Image(systemName: task.isCompleted ? "checkmark.square" : "square")
                .onTapGesture {
                    task.isCompleted.toggle()
                }
            Text(task.name)
        }
    }
}
