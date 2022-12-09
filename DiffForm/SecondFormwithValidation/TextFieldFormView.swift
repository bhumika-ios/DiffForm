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
        }
    }
}

struct TextFieldFormView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldFormView()
    }
}
