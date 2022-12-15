//
//  RadioButtonContentView.swift
//  DiffForm
//
//  Created by Bhumika Patel on 15/12/22.
//

import SwiftUI

struct RadioButtonContentView: View {
    @State private var isSelected: Bool = false
    var body: some View {
        VStack{
            Group{
                Toggle("Turn me On?", isOn: $isSelected)
                Text(isSelected ? "I am turned On" : "I'm turned Off")
            }
            Group{
                Toggle("Turn me On?", isOn: $isSelected)
                    .labelsHidden()
                Text(isSelected ? "I am turned On" : "I'm turned Off")
            }
            Group{
                Toggle(isOn: $isSelected){
                    Label(isSelected ? "Is On" : "Is Off", systemImage: "lightbulb")
                        .symbolVariant(isSelected ? .fill : .none)
                }
               
            }
            Group{
                Toggle(isOn: $isSelected){
                    Label(isSelected ? "Is On" : "Is Off", systemImage: "lightbulb")
                        .symbolVariant(isSelected ? .fill : .none)
                }
                // as button work
                .toggleStyle(.button)
            }
        }
    }
}

struct RadioButtonContentView_Previews: PreviewProvider {
    static var previews: some View {
        RadioButtonContentView()
    }
}
