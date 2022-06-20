//
//  TopTableViewCell.swift
//  Menu
//
//  Created by beehive-iOS on 6/19/22.
//

import UIKit

class TopTableViewCell: UITableViewCell {

    @IBOutlet weak var topDishImage: UIImageView!
    @IBOutlet weak var topDishName: UILabel!
    @IBOutlet weak var topDishPrice: UILabel!
    @IBOutlet weak var topDishRating: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
