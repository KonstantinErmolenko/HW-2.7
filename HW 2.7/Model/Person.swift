//
//  Person.swift
//  HW 2.7
//
//  Created by Ермоленко Константин on 19.02.2020.
//  Copyright © 2020 Ермоленко Константин. All rights reserved.
//

struct Person {
    var name: String
    var phone: String
    var email: String
}

extension Person {
    static func getPersons() -> [Person] {
        
        var persons: [Person] = []
        var names = getListOfNames()
        var surnames = getListOfSurnames()
        var phones = getListOfPhones()
        var emails = getListOfEmails()
        
        for _ in 1...10 {
            
            let name = retrieveRandomElement(from: &names)
            let surname = retrieveRandomElement(from: &surnames)
            let phone = retrieveRandomElement(from: &phones)
            let email = retrieveRandomElement(from: &emails)
            let person = Person(
                name: "\(name) \(surname)",
                phone: phone,
                email: email
            )
            persons.append(person)
        }
        
        return persons
    }
    
    private static func retrieveRandomElement(from collection: inout [String]) -> String {
        let index = collection.count > 0 ? Int.random(in: 0..<collection.count) : 0
        return collection.remove(at: index)
    }
    
    private static func getListOfNames() -> [String] {
        return [
            "Sophia",
            "Isabella",
            "Emma",
            "Olivia",
            "Ava",
            "Jacob",
            "Mason",
            "William",
            "Jayden",
            "Noah"
        ]
    }
    
    private static func getListOfSurnames() -> [String] {
        return [
            "Smith",
            "Johnson",
            "Williams",
            "Jones",
            "Brown",
            "Davis",
            "Miller",
            "Wilson",
            "Moore",
            "Taylor"
        ]
    }
    
    private static func getListOfPhones() -> [String] {
        return [
            "+1 802 767-5668",
            "+1 810 751-9233",
            "+1 704 841-3845",
            "+1 803 471-3022",
            "+1 918 350-4379",
            "+1 443 346-2245",
            "+1 920 323-8277",
            "+1 712 789-3476",
            "+1 505 350-1306",
            "+1 970 238-9223",
            "+1 786 292-5607"
        ]
    }
    
    private static func getListOfEmails() -> [String] {
        return [
            "notaprguy@outlook.com",
            "tmaek@live.com",
            "rupak@msn.com",
            "aschmitz@yahoo.com",
            "lcheng@me.com",
            "lamky@aol.com",
            "pierce@aol.com",
            "conteb@yahoo.ca",
            "augusto@optonline.net",
            "conteb@yahoo.ca",
            "peoplesr@msn.com",
            "jbarta@optonline.net"
        ]
    }
}
