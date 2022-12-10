//
//  FormContentBuilder.swift
//  DiffForm
//
//  Created by Bhumika Patel on 09/12/22.
//

import Foundation
import Combine

protocol FormContentBuilder {
    var content: [FormComponent] { get }
}

final class FormContentBuilderImpl:ObservableObject, FormContentBuilder {
    private(set) var content:[FormComponent] = [
        TextFormComponent(id: .firstName, placeholder: "First Name", validations: [RegexValidationManagerImpl([RegexFormItem(pattern: RegexPatterns.name, error: .custom(message: "Invalid first name entered"))])]),
        TextFormComponent(id: .lastName, placeholder: "Last Name", validations: [RegexValidationManagerImpl([RegexFormItem(pattern: RegexPatterns.name, error: .custom(message: "Invalid last name entered"))])]),
        TextFormComponent(id: .email, placeholder: "Email", keyboardType: .emailAddress, validations: [RegexValidationManagerImpl([RegexFormItem(pattern: RegexPatterns.emailChars, error: .custom(message: "Invalid Email missing @")), RegexFormItem(pattern: RegexPatterns.higherThanSixChars, error: .custom(message: "Less than 6 characters"))])]),
        DateFormComponent(id: .dob, mode: .date),
        ButtonFormComponent(id: .submit, title: "Confirm")
    ]
}
