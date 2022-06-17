//
//  TopDishesTableViewCell.swift
//  Menu
//
//  Created by beehive-iOS on 6/11/22.
//

import UIKit

class TopDishesTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    
    var topDishes: [TopDish] = [
        TopDish(dishName: "Сэндвич клаб с курицей", dishImage: "top1"),
        TopDish(dishName: "Сырный крем суп", dishImage: "top2"),
        TopDish(dishName: "Салат Цезарь", dishImage: "top3")]
    

    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: true)

    }
}

extension TopDishesTableViewCell:
    UICollectionViewDelegate,
    UICollectionViewDataSource {
func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return topDishes.count
}

func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TopDishesCollectionViewCell", for: indexPath) as! TopDishesCollectionViewCell
    let topDish = topDishes[indexPath.row]
    cell.dishImage.image = UIImage(named: topDish.dishImage)
    cell.dishName.text = topDish.dishName
    return cell
}


func didTapAllButton(_ sender: Any) {
    }

}
