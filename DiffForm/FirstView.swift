//
//  FirstView.swift
//  DiffForm
//
//  Created by Bhumika Patel on 06/12/22.
//

import SwiftUI

struct FirstView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    var body: some View {
        NavigationView{
            Form{
                TextField("first Name", text: $firstName)
                TextField("last Name", text: $lastName)
            }
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
