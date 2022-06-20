//
//  NewsTableViewCell.swift
//  Menu
//
//  Created by beehive-iOS on 6/11/22.
//

import UIKit

class NewsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var newsLabel: UILabel!
        
    @IBOutlet weak var collectionView: UICollectionView!
    
    var news: [News] = [News(newsImage: "news1", newsText: "С первого числа доступны ЗОЖ блюда")]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

extension NewsTableViewCell:
    UICollectionViewDelegate,
    UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return news.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NewsCollectionViewCell", for: indexPath) as! NewsCollectionViewCell
        let new = news[indexPath.row]
        cell.newsImageView.image = UIImage(named: new.newsImage)
        cell.newsImageView.layer.cornerRadius = 15
        cell.newsLabel.text = new.newsText
        return cell
    }
    
    
}
