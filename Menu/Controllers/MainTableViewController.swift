//
//  MainTableViewController.swift
//  Menu
//
//  Created by beehive-iOS on 6/11/22.
//

import UIKit

class MainTableViewController: UITableViewController {

    var topDishes: [TopDish] = [
        TopDish(dishName: "first", dishImage: "banner"),
        TopDish(dishName: "second", dishImage: "second")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TopDishesTableViewCell", for: indexPath) as! TopDishesTableViewCell
            cell.titleLabel.text = "Топ блюд от MOOSE"
            return cell
        }
        else {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewsTableViewCell", for: indexPath) as! NewsTableViewCell
            cell.newsLabel.text = "Лента новостей"
            return cell
//            cell.newsCollectionView.dequeueReusableCell(withReuseIdentifier: "NewsCollectionViewCell", for: indexPath) as! NewsCollectionViewCell
            
        }
    }
}
