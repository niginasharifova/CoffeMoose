//
//  NewsDescriptionTableViewCell.swift
//  Menu
//
//  Created by beehive-iOS on 6/23/22.
//

import UIKit

class NewsDescriptionTableViewCell: UITableViewCell {

    @IBOutlet weak var newsTitle: UILabel!
    
    @IBOutlet weak var newsImage: UIImageView!
    
    @IBOutlet weak var newsText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

