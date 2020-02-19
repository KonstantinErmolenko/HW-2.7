//
//  Person.swift
//  HW 2.7
//
//  Created by Ермоленко Константин on 19.02.2020.
//  Copyright © 2020 Ермоленко Константин. All rights reserved.
//

struct Person {
    var name: String
}

extension Person {
    static func getPersons() -> [Person] {
        return [
            Person(
                name: "John"
            ),
            Person(
                name: "Mary"
            ),
            Person(
                name: "Sam"
            ),
            Person(
                name: "Kate"
            )
        ]
    }
}
