//
//  NewsDescriptionTableViewController.swift
//  Menu
//
//  Created by beehive-iOS on 6/23/22.
//

import UIKit


class NewsDescriptionTableViewController: UITableViewController {
    var new: News?
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return new?.descriptions.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewsDescriptionTableViewCell", for: indexPath) as! NewsDescriptionTableViewCell
        if let news = new {
            let new: NewsDescription = news.descriptions[indexPath.row]
            cell.newsImage.image = UIImage(named: new.image)
            cell.newsText.text = new.text
            cell.newsTitle.text = new.title
        }
        return cell
    }
    
}
