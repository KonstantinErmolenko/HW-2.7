//
//  ContactListTableViewController.swift
//  HW 2.7
//
//  Created by Ермоленко Константин on 19.02.2020.
//  Copyright © 2020 Ермоленко Константин. All rights reserved.
//

import UIKit

class ContactListTableViewController: UITableViewController {

    // MARK: - Public Properties
    var contacts = Person.getPersons()
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)

        let contact = contacts[indexPath.row]
        cell.textLabel?.text = contact.name

        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let person = contacts[indexPath.row]
        performSegue(withIdentifier: "showContactDetails", sender: person)
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showContactDetails" {
            let detailVC = segue.destination as! ContactDetailsViewController
            detailVC.contact = sender as? Person
        }
    }
}
