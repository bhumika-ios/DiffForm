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
    @State private var numberOfLink = 1
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
                    Stepper("Number of Link", value:$numberOfLink, in: 1...100)
                    Text("This video has\(numberOfLink) Liks")
                    Link("Terms of service", destination: URL(string: "https://www.linkedin.com/in/bhumika-ios-developer/")!)
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
