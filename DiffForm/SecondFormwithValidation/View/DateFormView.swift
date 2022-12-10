//
//  DateFormView.swift
//  DiffForm
//
//  Created by Bhumika Patel on 09/12/22.
//

import SwiftUI

struct DateFormView: View {
    let component: DateFormComponent
    var body: some View {
        VStack(alignment: .leading) {
            DatePicker("", selection: .constant(Date()), displayedComponents: [component.mode])
               .labelsHidden()
               .frame(maxWidth: .infinity, alignment: .leading)
            
            Text("Erroe here")
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
