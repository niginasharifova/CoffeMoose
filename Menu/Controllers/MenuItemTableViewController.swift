//
//  MenuItemTableViewController.swift
//  Menu
//
//  Created by beehive-iOS on 6/11/22.
//

import UIKit

class MenuItemTableViewController: UITableViewController {
        
    var category: CategoryI?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return category?.categoryItems.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuItem", for: indexPath) as! MenuItemTableViewCell
        if let category = category {
            let item: Item = category.categoryItems[indexPath.row]
            cell.itemNameLabel.text = item.itemName
            cell.itemPriceLabel.text = item.itemPrice
        }
        return cell
    }
    @IBAction func didTapAddToCartButton(_ sender: Any) {
        // Get the current product id
//        let productId = category
        // Add the product to the cart
        
        // Display a message that the product has ben added
    }
}
