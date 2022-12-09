//
//  FormContentBuilder.swift
//  DiffForm
//
//  Created by Bhumika Patel on 09/12/22.
//

import Foundation

protocol FormContentBuilder {
    var content: [FormComponent] { get }
}

final class FormContentBuilderImpl: FormContentBuilder {
    private(set) var content:[FormComponent] = [
        TextFormComponent(id: .firstName, placeholder: "First Name"),
        TextFormComponent(id: .lastName, placeholder: "Last Name"),
        TextFormComponent(id: .email, placeholder: "Email", keyboardType: .emailAddress),
        DateFormComponent(id: .dob, mode: .date),
        ButtonFormComponent(id: .submit, title: "Confirm")
    ]
}
