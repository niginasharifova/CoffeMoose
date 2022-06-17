//
//  TableViewCell.swift
//  Menu
//
//  Created by beehive-iOS on 6/11/22.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var categoryImageView: UIImageView!
    
    @IBOutlet weak var categoryNameLabel: UILabel!
    
    @IBOutlet weak var arrowImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
