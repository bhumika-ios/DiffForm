//
//  FormState.swift
//  DiffForm
//
//  Created by Bhumika Patel on 12/12/22.
//

import Foundation

struct User: Equatable {
    let firstName: String
    let lastName: String
    let email: String
    let dob: Date
}

enum FormState {
    case valid(user: User)
    case fail(error: ValidationError)
}

extension FormState: Equatable {
    
    static func == (lhs: FormState, rhs: FormState) -> Bool {
        switch (lhs, rhs) {
        case (.valid(user: let lhsType),
              .valid(user: let rhsType)):
            return lhsType == rhsType
        case (.fail(error: let lhsType),
               .fail(error: let rhsType)):
            return lhsType.errorDescription == rhsType.errorDescription
        default:
            return false
        }
    }
}
