//
//  ViewController.swift
//  ScrollViewAvoidKeyboard
//
//  Created by Tuan IT. Hoang Anh on 27/06/2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func scrollViewTapped(_ sender: Any) {
        let vc = ScrollViewTestVC()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func tableViewTapped(_ sender: Any) {
        let vc = TableViewTestVC()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func collectionViewTapped(_ sender: Any) {
        let vc = CollectionViewTestVC()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

