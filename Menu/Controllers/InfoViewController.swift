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
    
    @IBAction func didTapCallButton(_ sender: Any) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MenuToMenuItem" {
           let vc = segue.destination as! MapViewController
            vc.title = "Местоположение"
        }
    }
}
