//
//  ButtonFormView.swift
//  DiffForm
//
//  Created by Bhumika Patel on 09/12/22.
//

import SwiftUI

struct ButtonFormView: View {
    var body: some View {
        Button("Title here") {
            
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
        ButtonFormView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
