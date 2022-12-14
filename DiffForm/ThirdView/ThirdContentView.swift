//
//  ThirdContentView.swift
//  DiffForm
//
//  Created by Bhumika Patel on 14/12/22.
//

import SwiftUI

struct ThirdContentView: View {
    @ObservedObject var viewM = ViewModel()
    @State private var showYearSelector = false
    var body: some View {
        ZStack{
            VStack{
                VStack{
                    EntryField(sfSymbolName: "envelope", placeHolder: "Email Address", prompt: <#String#>, field: $viewM.email)
                    EntryField(sfSymbolName: "lock", placeHolder: "Password", prompt: <#String#>,  field: $viewM.password, isSecure: true)
                    EntryField(sfSymbolName: "lock", placeHolder: "Confirm", prompt: <#String#>,  field: $viewM.confirmPw, isSecure: true)
                }
            }
        }
    }
}

struct ThirdContentView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdContentView()
    }
}
struct EntryField: View {
    var sfSymbolName: String
    var placeHolder: String
    var prompt: String
    @Binding var field: String
    var isSecure:Bool = false
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: sfSymbolName)
                    .foregroundColor(.gray)
                    .font(.headline)
                if isSecure {
                    SecureField(placeHolder, text: $field).autocapitalization(.none)
                } else {
                    
                    TextField(placeHolder, text: $field).autocapitalization(.none)
                }
            }
            .padding(8)
            .background(Color(UIColor.secondarySystemBackground))
            .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 1))
            Text(prompt)
            .fixedSize(horizontal: false, vertical: true)
            .font(.caption)
        }
    }
}
