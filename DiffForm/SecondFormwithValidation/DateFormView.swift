//
//  DateFormView.swift
//  DiffForm
//
//  Created by Bhumika Patel on 09/12/22.
//

import SwiftUI

struct DateFormView: View {
    var body: some View {
        VStack(alignment: .leading) {
            DatePicker("", selection: .constant(Date()), displayedComponents: [.date])
               .labelsHidden()
               .frame(maxWidth: .infinity, alignment: .leading)
            
            Text("Hello world")
                .font(.system(size: 12, weight: .semibold))
                .foregroundColor(.red)
        }
    }
}

struct DateFormView_Previews: PreviewProvider {
    static var previews: some View {
        DateFormView()
    }
}
