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
                HStack{
                    Image(systemName: "square")
                        .onTapGesture {
                            task.isCompleted.toggle()
                        }
                    Text(task.name)
                }
            }
        }
    }
}

struct CheckBoxContentView_Previews: PreviewProvider {
    static var previews: some View {
        CheckBoxContentView()
    }
}
