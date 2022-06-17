//
//  MenuItemTableViewCell.swift
//  Menu
//
//  Created by beehive-iOS on 6/11/22.
//

import UIKit

class MenuItemTableViewCell: UITableViewCell {
    
    @IBOutlet weak var itemNameLabel: UILabel!
    
    @IBOutlet weak var itemPriceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
