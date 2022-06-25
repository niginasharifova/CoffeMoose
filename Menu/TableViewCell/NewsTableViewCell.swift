//
//  NewsTableViewCell.swift
//  Menu
//
//  Created by beehive-iOS on 6/11/22.
//

import UIKit

var news: [News] = [
    News(newsImage: "news", newsText: "С 1-го июля доступны ЗОЖ блюда", descriptions: [NewsDescription(image: "b", title: "nn", text: "nn")]),
    News(newsImage: "news2", newsText: "10% СКИДКА НА ВСЕ БЛЮДА И НАПИТКИ", descriptions: [NewsDescription(image: "kk", title: "ttttt", text: "sslslslsl")])]

class NewsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var newsLabel: UILabel!
        
    @IBOutlet weak var collectionView: UICollectionView!
    

    
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
        cell.newsLabel.text = new.newsText
        return cell
    }
    
    
}
