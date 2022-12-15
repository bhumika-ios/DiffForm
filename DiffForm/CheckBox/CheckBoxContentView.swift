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
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct CheckBoxContentView_Previews: PreviewProvider {
    static var previews: some View {
        CheckBoxContentView()
    }
}
