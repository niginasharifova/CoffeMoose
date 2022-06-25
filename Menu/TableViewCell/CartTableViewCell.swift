//
//  CartTableViewCell.swift
//  Menu
//
//  Created by beehive-iOS on 6/22/22.
//

import UIKit
    
var item: Item?

class CartTableViewCell: UITableViewCell {

    @IBOutlet weak var cartItemName: UILabel!
    
    
    @IBOutlet weak var cartItemPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func didTapRemoveButton(_ sender: Any) {
                NotificationCenter.default.post(name: .itemHasBeenRemoved, object: nil)
    }
}
