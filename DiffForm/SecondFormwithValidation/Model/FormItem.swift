//
//  FormItem.swift
//  DiffForm
//
//  Created by Bhumika Patel on 09/12/22.
//

import Foundation
import UIKit


protocol FormItem{
    var id: UUID { get }
    var formId: FormField { get }
    var val: Any? { get }
}

enum FormField{
    case firstName
    case lastName
    case email
    case dob
    case submit
}

class FormComponent: FormItem, Identifiable {
    let id = UUID()
    let formId: FormField
    var val: Any?
    
    init(_ id: FormField) {
        self.formId = id
    }
}

final class TextFormComponent: FormComponent {
    let placeholder: String
    let keyboardType: UIKeyboardType
    
    init(id: FormField, placeholder: String, keyboardType: UIKeyboardType = .default){
        self.placeholder = placeholder
        self.keyboardType = keyboardType
        super.init(id)
    }
}

final class DateFormComponent: FormComponent{
    let mode: UIDatePicker.Mode
    init(id: FormField, mode: UIDatePicker.Mode) {
        self.mode = mode
        super.init(id)
    }
}

final class ButtonFormComponent: FormComponent{
    let title: String
    
    init(id: FormField, title: String) {
        self.title = title
        super.init(id)
    }
}