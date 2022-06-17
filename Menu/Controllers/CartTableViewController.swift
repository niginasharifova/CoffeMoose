//
//  CartTableViewController.swift
//  Menu
//
//  Created by beehive-iOS on 6/11/22.
//

import UIKit

class CartTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */
}
//override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//    if segue.identifier == "MenuToMenuItem",
//    let vc = segue.destination as? MenuItemTableViewController,
//    let indexPath = tableView.indexPathForSelectedRow {
//        vc.title = categories[indexPath.row].categoryName
//        vc.category = categories[indexPath.row]
//        }
