//
//  GroupedContactListTableViewController.swift
//  HW 2.7
//
//  Created by Ермоленко Константин on 19.02.2020.
//  Copyright © 2020 Ермоленко Константин. All rights reserved.
//

import UIKit

class GroupedContactListTableViewController: UITableViewController {

    // MARK: - Public Properties
    var personList = Person.getPersons()

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return personList.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return personList[section].name
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactInfo", for: indexPath)

        let person = personList[indexPath.section]
        cell.textLabel?.text = indexPath.row == 0 ? person.email: person.phone
        return cell
    }
}
