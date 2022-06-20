//
//  CartTableViewController.swift
//  Menu
//
//  Created by beehive-iOS on 6/11/22.
//

import UIKit

var cartItems: [String] = ["asd", "asdas"]

class CartTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        updateCart()
        title = "Корзина"
        
        NotificationCenter.default.addObserver(self, selector: #selector(addToCart), name: .itemHasBeenAdded, object: nil)    }
    
        @objc
        func addToCart(_ notification: Notification) {
            if let object = notification.object as? Item {
                print("Обработка")
                for (index, _) in categories.enumerated() {
                    categories[index].categoryItems.append(object) }
                tableView.reloadData()
                print("mmmmm")
        }
    }
    

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cartItems.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = cartItems[indexPath.row]

        return cell
    }

    
    private func updateCart() {
        
        navigationController?.tabBarItem.badgeValue = String(cartItems.count)
        navigationController?.tabBarItem.badgeColor = .red
        
        tableView.reloadData()
    }
    
}
//override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//    if segue.identifier == "MenuToMenuItem",
//    let vc = segue.destination as? MenuItemTableViewController,
//    let indexPath = tableView.indexPathForSelectedRow {
//        vc.title = categories[indexPath.row].categoryName
//        vc.category = categories[indexPath.row]
//        }
