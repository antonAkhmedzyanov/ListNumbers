//
//  PersonFile.swift
//  ListNumbers
//
//  Created by Anton Akhmedzyanov on 31.08.2022.
//

import Foundation

struct Person {
    let name: String
    let secondname: String
    let phone: String
    let email: String
    
    var fullname: String {
        "\(name) \(secondname)"
    }
}

extension Person {
    static func getPerson() -> [Person] {
        let dataManager = DataManager()
        var persons = [Person]()
        
        for index in 0..<dataManager.names.count {
            persons.append(Person(name: dataManager.names[index],
                                  secondname: dataManager.surnames[index],
                                  phone: dataManager.phonenumbers[index],
                                  email: dataManager.emails[index]) )
        }
        return persons
    }
}
