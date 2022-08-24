//
//  Person.swift
//  ContactListUI
//
//  Created by Kislov Vadim on 23.08.2022.
//

struct Person: Identifiable {
    let id: Int
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getPersonList() -> [Person] {
        var persons: [Person] = []
        let dataManager = DataManager.shared
        
        for index in 0..<dataManager.names.count {
            let person = Person(
                id: index,
                name: dataManager.names[index],
                surname: dataManager.surnames[index],
                phone: dataManager.phones[index],
                email: dataManager.emails[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
    
    static func getDefaultPerson() -> Person {
        let dataManager = DataManager.shared
        let index = 0
        
        return Person(
            id: index,
            name: dataManager.names[index],
            surname: dataManager.surnames[index],
            phone: dataManager.phones[index],
            email: dataManager.emails[index]
        )
    }
}
