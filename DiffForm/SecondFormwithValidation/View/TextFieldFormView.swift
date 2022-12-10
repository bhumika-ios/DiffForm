//
//  TextFieldFormView.swift
//  DiffForm
//
//  Created by Bhumika Patel on 09/12/22.
//

import SwiftUI

struct TextFieldFormView: View {
    @EnvironmentObject var contentBuilder: FormContentBuilderImpl
    @State private var text = ""
    @State private var error: ValidationError?
    let component: TextFormComponent
    var body: some View {
        VStack(alignment: .leading){
            
            TextField(component.placeholder, text:$text)
                .frame(maxWidth: .infinity, minHeight: 44, alignment: .center)
                .padding(.leading, 5)
                .keyboardType(.default)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(error == nil ? Color.gray.opacity(0.25) : Color.red)
                )
            Text(error?.errorDescription ?? "")
                .font(.system(size: 12, weight: .semibold))
                .foregroundColor(.red)
            
        }
        .onChange(of: text, perform: { value in
            contentBuilder.update(text, in: component)
            //perform validation
            error = component
                .validations
                .compactMap{ $0.validate(text)}
                    .first
                
        })
    }
}

struct TextFieldFormView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldFormView(component: .init(id: .firstName, placeholder: ""))
            .environmentObject(FormContentBuilderImpl())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
