//
//  Pet.swift
//  DiffForm
//
//  Created by Bhumika Patel on 14/12/22.
//


import Foundation
import SwiftUI

struct Pet: Identifiable {
    var id = UUID()
    var name: String
}

extension Pet {
    static func dummyData() -> [Pet] {
        let items = ["Alpaca","Ant", "Bird","Cat", "Dog","Ferret","Fish","Frog", "Gecko", "Gerbil", "Goat", "Guinea Pig", "Hamster", "Hedgehog", "Crab", "Horse", "Iguana", "Mantis", "Mouse",  "Newt", "Pig", "Rabbit", "Rat", "Salamander", "Sheep", "Snake", "Spider", "Stick-Bugs", "Turtle"]
        
        var array = [Pet]()
        
        for item in items {
            let pet = Pet(name: item)
            array.append(pet)
        }
        
        return array
    }
}
