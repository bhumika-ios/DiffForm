//
//  FormItem.swift
//  DiffForm
//
//  Created by Bhumika Patel on 09/12/22.
//

import Foundation


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
