//
//  InfoViewController.swift
//  Menu
//
//  Created by beehive-iOS on 6/12/22.
//

import UIKit

class InfoViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didTallCall(_ sender: Any) {
        if let url = URL(string: "tel://444602121") {
            UIApplication.shared.open(url) } }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MenuToMenuItem" {
           let vc = segue.destination as! MapViewController
            vc.title = "Местоположение"
        }
    }
}

