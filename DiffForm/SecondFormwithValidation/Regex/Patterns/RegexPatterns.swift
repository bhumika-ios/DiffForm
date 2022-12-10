//
//  RegexPatterns.swift
//  DiffForm
//
//  Created by Bhumika Patel on 10/12/22.
//
enum RegexPatterns {
    static let emailChars = ".*[@].*"
    static let higherThanSixChars = "^.{6,}$"
    static let name = "^[a-zA-Z]+(([',.-][a-zA-Z])?[a-zA-Z]*)*$"
}
