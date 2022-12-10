//
//  ButtonFormView.swift
//  DiffForm
//
//  Created by Bhumika Patel on 09/12/22.
//

import SwiftUI

struct ButtonFormView: View {
    let component: ButtonFormComponent
    var body: some View {
        Button(component.title) {
            
        }
        .frame(maxWidth: .infinity, minHeight: 44, alignment: .center)
        .background(Color.blue)
        .foregroundColor(.white)
        .font(.system(size: 16, weight: .bold))
        .cornerRadius(8)
    }
}

struct ButtonFormView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonFormView(component: .init(id: .submit, title: "Title here"))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
