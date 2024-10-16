//
//  ViewController.swift
//  Lesson2.12
//
//  Created by Варвара Уткина on 16.10.2024.
//

import UIKit

final class ViewController: UITableViewController {
    private let persons = Contact.getContacts()

    // MARK: - UITableViewDataSource
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons[section].rows.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath)
        let contact = persons[indexPath.section]
        
        var content = cell.defaultContentConfiguration()
        content.text = contact.rows[indexPath.row]
        
        content.image = indexPath.row == 0
        ? UIImage(systemName: "phone")
        : UIImage(systemName: "tray")

        cell.contentConfiguration = content
        return cell
    }
    
    // MARK: - UITableViewDelegate
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let contentView = UIView()
        contentView.backgroundColor = .gray
        
        let fullNameLabel = UILabel(
            frame: CGRect(
                x: 16,
                y: 3,
                width: tableView.frame.width - 32,
                height: 20
            )
        )
        fullNameLabel.font = UIFont.boldSystemFont(ofSize: 20)
        fullNameLabel.textColor = .white
        fullNameLabel.text = persons[section].fullName
        
        contentView.addSubview(fullNameLabel)
        return contentView
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

}

