//
//  DateFormView.swift
//  DiffForm
//
//  Created by Bhumika Patel on 09/12/22.
//

import SwiftUI

struct DateFormView: View {
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
    }
}

struct DateFormView_Previews: PreviewProvider {
    static var previews: some View {
        DateFormView(component: .init(id: .dob, mode: .date))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
