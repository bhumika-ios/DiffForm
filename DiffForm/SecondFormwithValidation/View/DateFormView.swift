//
//  DateFormView.swift
//  DiffForm
//
//  Created by Bhumika Patel on 09/12/22.
//

import SwiftUI

struct DateFormView: View {
    @EnvironmentObject var contentBuilder: FormContentBuilderImpl
    @State private var selectedDate = Date()
    @State private var error: ValidationError?
    let component: DateFormComponent
    var body: some View {
        VStack(alignment: .leading) {
            DatePicker("", selection: $selectedDate, displayedComponents: [component.mode])
               .labelsHidden()
               .frame(maxWidth: .infinity, alignment: .leading)
            
            Text(error?.errorDescription ?? "")
                .font(.system(size: 12, weight: .semibold))
                .foregroundColor(.red)
        }
        .onChange(of: selectedDate, perform: { value in
            contentBuilder.update(selectedDate, in: component)
            error = component
                .validations
                .compactMap{ $0.validate(selectedDate)}
                .first
            
        })
    }
}

struct DateFormView_Previews: PreviewProvider {
    static var previews: some View {
        DateFormView(component: .init(id: .dob, mode: .date))
            .environmentObject(FormContentBuilderImpl())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
