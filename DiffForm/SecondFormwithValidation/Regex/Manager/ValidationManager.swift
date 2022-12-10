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

//Regex validator

struct RegexValidationManagerImpl: ValidationManager {
    
    private let items: [RegexFormItem]
    
    init(_ items: [RegexFormItem]) {
        self.items = items
    }
    func validate(_ val: Any) -> ValidationError? {
        <#code#>
    }
    
}
