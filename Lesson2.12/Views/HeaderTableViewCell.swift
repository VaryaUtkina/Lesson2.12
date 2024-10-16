//
//  HeaderTableViewCell.swift
//  Lesson2.12
//
//  Created by Варвара Уткина on 16.10.2024.
//

import UIKit

final class HeaderTableViewCell: UITableViewCell {
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    
    @IBAction func phoneButtonAction() {
        print("Calling \(nameLabel.text ?? "") \(surnameLabel.text ?? "")")
    }
    

}
