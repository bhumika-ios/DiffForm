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
                    VStack(spacing: 5) {
                        Button(action: {
                            // Present Selection
                            self.showYearSelector.toggle()
                        }) {
                            Text(String(viewM.birthYear))
                                .padding(8)
                                .foregroundColor(.primary)
                                .background(Color(UIColor.secondarySystemBackground))
                                .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 1))
                        }
                    }
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
struct YearPickerView: View {
    @Binding var birthYear: Int
    @Binding var showYearSelector:Bool
    let currentYear = Calendar.current.dateComponents([.year], from: Date()).year!
    var body: some View {
        ZStack {
            Color(.black).opacity(0.4)
                .edgesIgnoringSafeArea(.all)
            VStack {
                VStack {
                    ScrollView(showsIndicators: false){
                        VStack(spacing: 10) {
                            ForEach(((currentYear-100)...currentYear).reversed(), id: \.self) { year in
                                Button(action: {
                                    self.birthYear = year
                                    self.showYearSelector.toggle()
                                }) {
                                    Text(String(year))
                                        .foregroundColor(.primary)
                                    
                                }
                            }
                        }
                    }
                    
                    .frame(height: 200)
                }.padding()
                    .frame(width: 100)
                    .background(Color(UIColor.secondarySystemBackground))
                    .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                    .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20)
                Spacer()
            }.padding(.top)
                .animation(.easeIn)
        }
    }
}
