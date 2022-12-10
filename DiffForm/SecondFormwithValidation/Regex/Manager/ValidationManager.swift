//
//  ValidationManager.swift
//  DiffForm
//
//  Created by Bhumika Patel on 10/12/22.
//

import Foundation

protocol ValidationManager {
    func validate(_ val: Any) -> ValidationError?
}
