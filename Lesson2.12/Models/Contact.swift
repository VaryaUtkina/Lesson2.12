//
//  Contact.swift
//  Lesson2.12
//
//  Created by Варвара Уткина on 16.10.2024.
//

struct Contact {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    var rows: [String] {
        [phone, email]
    }
    
    static func getContacts() -> [Contact] {
        let dataSource = DataStore.shared
        
        let names = dataSource.names.shuffled()
        let surnames = dataSource.surnames.shuffled()
        let phones = dataSource.phoneNumbers.shuffled()
        let emails = dataSource.emails.shuffled()
        
        let minCount = min(
            names.count,
            surnames.count,
            phones.count,
            emails.count
        )
        
        let contacts = (0..<minCount).map { iteration in
            Contact(
                name: names[iteration],
                surname: surnames[iteration],
                phone: phones[iteration],
                email: emails[iteration]
            )
        }
        return contacts
    }
}
