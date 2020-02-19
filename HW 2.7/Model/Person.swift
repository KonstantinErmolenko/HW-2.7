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
        return [
            Person(
                name: "John",
                phone: "123123",
                email: "john@gmail.com"
            ),
            Person(
                name: "Mary",
                phone: "234234",
                email: "mary@gmail.com"
            ),
            Person(
                name: "Sam",
                phone: "345345",
                email: "sam@gmail.com"
            ),
            Person(
                name: "Kate",
                phone: "456456",
                email: "kate@gmail.com"
            )
        ]
    }
}
