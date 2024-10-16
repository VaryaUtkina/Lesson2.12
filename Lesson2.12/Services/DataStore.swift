//
//  DataStore.swift
//  Lesson2.12
//
//  Created by Варвара Уткина on 16.10.2024.
//

import Foundation

final class DataStore {
    static let shared = DataStore()
    
    var names = [
        "Kevin",
        "Robert",
        "Bobbie",
        "Ron",
        "Billy",
        "Aaron",
        "Duncan",
        "Frank",
        "Dennis",
        "Lilu",
        "Charlie"
    ]
    let surnames = [
        "Smith",
        "Gibson",
        "Homelander",
        "Johnson",
        "Soprano",
        "Abisanty",
        "Bucco",
        "Blutooth",
        "Klarkcon",
        "Chan"
    ]
    let phoneNumbers = [
        "+7 (903) 555-53-02",
        "+7 (943) 312-54-22",
        "+7 (999) 355-23-90",
        "+7 (536) 156-66-98",
        "+7 (093) 132-44-23",
        "+7 (945) 326-22-43",
        "+7 (993) 365-44-72",
        "+7 (698) 367-45-12",
        "+7 (981) 999-11-32",
        "+7 (999) 298-45-76"
    ]
    let emails = [
        "tuttti@gmail.com",
        "urban@gmail.com",
        "london@gmail.com",
        "york@mail.ru",
        "ron@mail.ru",
        "greece@mail.ru",
        "jojee@cloud.com",
        "love@cloud.com",
        "cinderella@cloud.com",
        "multi@cloud.com"
    ]
    
    private init() {}
}
