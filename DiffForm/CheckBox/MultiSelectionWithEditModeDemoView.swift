//
//  MultiSelectionWithEditModeDemoView.swift
//  DiffForm
//
//  Created by Bhumika Patel on 15/12/22.
//

import SwiftUI

struct MultiSelectionWithEditModeDemoView: View {
    
    var items: [String] = ["Alpaca","Ant", "Bird","Cat", "Dog","Ferret","Fish","Frog", "Gecko", "Gerbil", "Goat", "Guinea Pig", "Hamster", "Hedgehog", "Crab", "Horse", "Iguana", "Mantis", "Mouse",  "Newt", "Pig", "Rabbit", "Rat", "Salamander", "Sheep", "Snake", "Spider", "Stick-Bugs", "Turtle"]
    
    @State var selectedRows = Set<String>() // Multipe Selection
  //  @State var selectedRow: String? // Single Selection
    @State var isEditing = false
    
    var body: some View {
        NavigationView {
            List(selection: $selectedRows){
                ForEach(items, id: \.self) { item in
                    Text(item)
                }
            }
//            List(items, id: \.self, selection: $selectedRow) { item in
//                Text(item)
//            }
            .navigationBarItems(trailing: Button(action: {
                // code for action
                isEditing.toggle()
            }, label: {
                if self.isEditing {
                    Text("Done").foregroundColor(Color.red)
                } else {
                    Text("Edit").foregroundColor(Color.blue)
                }
            }))
            .listStyle(.inset)
            .environment(\.editMode, .constant(self.isEditing ? EditMode.active : EditMode.inactive))
            .animation(.spring(), value: isEditing)
            //.animation(Animation.spring())
            //.listStyle(InsetListStyle())
            .navigationBarTitle(Text("Selected \(selectedRows.count) rows"))
        }
    }
}

struct MultiSelectionWithEditModeDemoView_Previews: PreviewProvider {
    static var previews: some View {
        MultiSelectionWithEditModeDemoView()
    }
}
