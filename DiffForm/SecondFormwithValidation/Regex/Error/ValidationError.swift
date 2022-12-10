//
//  ValidationError.swift
//  DiffForm
//
//  Created by Bhumika Patel on 10/12/22.
//

import Foundation
enum ValidationError: Error {
    case custom(message: String)
}

extension ValidationError {
    var errorDescription: String {
        switch self {
        case .custom(let message):
            return message
        }
    }
}
