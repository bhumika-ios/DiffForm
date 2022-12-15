//
//  ToggleCheckboxstyle.swift
//  DiffForm
//
//  Created by Bhumika Patel on 15/12/22.
//

import Foundation
import SwiftUI

struct ToggleCheckboxstyle: ToggleStyle{
    func makeBody(configuration: Configuration) -> some View {
        Button{
            configuration.isOn.toggle()
        } label: {
            Image(systemName: "checkmark.square")
                .symbolVariant(configuration.isOn ? .fill : .none)
        }
    }
}
