//
//  TextFieldFormView.swift
//  DiffForm
//
//  Created by Bhumika Patel on 09/12/22.
//

import SwiftUI

struct TextFieldFormView: View {
    var body: some View {
        VStack(alignment: .leading){
            
            TextField("Placeholder here", text: .constant(""))
                .frame(maxWidth: .infinity, minHeight: 44, alignment: .center)
                .padding(.leading, 5)
                .keyboardType(.default)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray.opacity(0.25))
                )
            Text("Error here")
                .font(.system(size: 12, weight: .semibold))
                .foregroundColor(.red)
            
        }
    }
}

struct TextFieldFormView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldFormView()
    }
}
