//
//  MenuItemTableViewCell.swift
//  Menu
//
//  Created by beehive-iOS on 6/11/22.
//

import UIKit

class MenuItemTableViewCell: UITableViewCell {
    
    var item: Item?
    
    @IBOutlet weak var itemNameLabel: UILabel!
    @IBOutlet weak var itemPriceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    @IBAction func didTapAddButton(_ sender: Any) {
        if let item = item {
            cartItems.append(item)
            NotificationCenter.default.post(name: .itemHasBeenAdded, object: nil)
            NotificationCenter.default.post(name: .cartCountHasBeenAdded, object: cartItems.count)
            print(cartItems)
        }
    }
}
