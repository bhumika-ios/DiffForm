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
    @State private var birthdate = Date()
    @State private var onNewsLatter = false
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("Personal Information")){
                    TextField("first Name", text: $firstName)
                    TextField("last Name", text: $lastName)
                    DatePicker("BirthDate", selection: $birthdate)
                }
                Section(header:Text("Action")){
                    Toggle("send NewsLatter", isOn: $onNewsLatter)
                        .toggleStyle(SwitchToggleStyle(tint: .red))
                }
            }
            .navigationTitle("Account")
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
