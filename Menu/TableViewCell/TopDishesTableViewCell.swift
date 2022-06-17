//
//  TopDishesTableViewCell.swift
//  Menu
//
//  Created by beehive-iOS on 6/11/22.
//

import UIKit

class TopDishesTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource{

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var topDishesCollectionView: UICollectionView!
    
    var topDishes: [TopDish] = [
        TopDish(dishName: "first", dishImage: "first"),
        TopDish(dishName: "second", dishImage: "second")]
    

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

    @IBAction func didTapAllButton(_ sender: Any) {
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return topDishes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = topDishesCollectionView.dequeueReusableCell(withReuseIdentifier: "TopDishesCollectionViewCell", for: indexPath) as! TopDishesCollectionViewCell
        let topDish = topDishes[indexPath.row]
        cell.topDishImageView.image = UIImage(named: topDish.dishImage)
            cell.topDishNameLabel.text = topDish.dishName
            return cell
    }
}
