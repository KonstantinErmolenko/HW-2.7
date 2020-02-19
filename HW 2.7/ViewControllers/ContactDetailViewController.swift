//
//  ContactDetailViewController.swift
//  HW 2.7
//
//  Created by Ермоленко Константин on 19.02.2020.
//  Copyright © 2020 Ермоленко Константин. All rights reserved.
//

import UIKit

class ContactDetailViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    
    // MARK: - Public Properties
    var contact: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = contact.name
        emailLabel.text = contact.email
        phoneLabel.text = contact.phone
    }
}
