//
//  TopDishesTableViewController.swift
//  Menu
//
//  Created by beehive-iOS on 6/19/22.
//

import UIKit

class TopDishesTableViewController: UITableViewController {

    var topDishes: [TopDish] = [
        
        TopDish(dishName: "Сэндвич клаб", dishImage: "top1", dishPrice: "25c.", dishRating:"rating"),
        TopDish(dishName: "Сырный крем суп", dishImage: "top2", dishPrice: "27c.", dishRating:"rating"),
        TopDish(dishName: "Салат Цезарь", dishImage: "top3", dishPrice: "33c.", dishRating:"rating"),
        TopDish(dishName: "Жульен на булочке", dishImage: "top4", dishPrice: "43c.", dishRating:"rating"),
        TopDish(dishName: "Греческий салат", dishImage: "top5", dishPrice: "26c.", dishRating:"rating"),
        TopDish(dishName: "Пицца Фунги", dishImage: "top6", dishPrice: "70c.", dishRating:"rating"),
        TopDish(dishName: "Салат с ростбифом", dishImage: "top7", dishPrice: "39c.", dishRating:"rating")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return topDishes.count

    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "topTableViewCell", for: indexPath) as! TopTableViewCell
        let topDish = topDishes[indexPath.row]
        cell.topDishImage.image = UIImage(named: topDish.dishImage)
        cell.topDishImage.layer.cornerRadius = 15
        cell.topDishName.text = topDish.dishName
        cell.topDishPrice.text = topDish.dishPrice
        cell.topDishRating.image = UIImage(named: topDish.dishRating ?? "nil")
        
        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
