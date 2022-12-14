//
//  ViewModel.swift
//  DiffForm
//
//  Created by Bhumika Patel on 14/12/22.
//

import Foundation
class ViewModel: ObservableObject{
    @Published var email = ""
    @Published var password = ""
    @Published var confirmPw = ""
    var birthYear: Int = Calendar.current.dateComponents([.year], from: Date()).year!
    
    func confirm() {
        // perform signup functions then clear fields
        email = ""
        password = ""
        confirmPw = ""
        birthYear = Calendar.current.dateComponents([.year], from: Date()).year!
    }
}
