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
    var state: FormState? { get }
    func update(_ val: Any, in component: FormComponent)
    func validate()
}

final class FormContentBuilderImpl:ObservableObject, FormContentBuilder {

    @Published private(set) var state: FormState?
    
    private(set) var content:[FormComponent] = [
        TextFormComponent(id: .firstName, placeholder: "First Name", validations: [RegexValidationManagerImpl([RegexFormItem(pattern: RegexPatterns.name, error: .custom(message: "Invalid first name entered"))])]),
        TextFormComponent(id: .lastName, placeholder: "Last Name", validations: [RegexValidationManagerImpl([RegexFormItem(pattern: RegexPatterns.name, error: .custom(message: "Invalid last name entered"))])]),
        TextFormComponent(id: .email, placeholder: "Email", keyboardType: .emailAddress, validations: [RegexValidationManagerImpl([RegexFormItem(pattern: RegexPatterns.emailChars, error: .custom(message: "Invalid Email missing @")), RegexFormItem(pattern: RegexPatterns.higherThanSixChars, error: .custom(message: "Less than 6 characters"))])]),
        DateFormComponent(id: .dob, mode: .date, validations: [DateValidationManagerImpl()]),
        ButtonFormComponent(id: .submit, title: "Confirm")
    ]
    func update(_ val: Any, in component: FormComponent){
        guard let index = content.firstIndex(where: {$0.id == component.id}) else { return }
        content[index].val = val
    }
    func validate(){
        let formComponents = content
            .filter{ $0.formId != .submit }
        
        for component in formComponents {
            for validator in component.validations{
                if let error = validator.validate(component.val as Any){
                    self.state = .fail(error: error)
                    //print("Please enter form")
                    return
                }
            }
        }
        if let firstName = formComponents.first(where: { $0.formId == .firstName })?.val as? String,
           let lastName = formComponents.first(where: { $0.formId == .lastName })?.val as? String,
           let email = formComponents.first(where: { $0.formId == .email })?.val as? String,
           let dob = formComponents.first(where: { $0.formId == .dob })?.val as? Date {
            let newUser = User(firstName: firstName, lastName: lastName, email: email, dob: dob)
            
            self.state = .valid(user: newUser)
            
        }
    }
}
