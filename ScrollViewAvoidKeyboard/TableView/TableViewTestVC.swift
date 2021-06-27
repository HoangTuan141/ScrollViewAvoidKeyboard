//
//  TableViewTestVC.swift
//  ScrollViewAvoidKeyboard
//
//  Created by Tuan Hoang Anh on 14/06/2021.
//

import UIKit

class TableViewTestVC: UIViewController {
    @IBOutlet weak var tableView: UITableViewAvoidKeyboard!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Table View Test"
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "CellTest", bundle: nil), forCellReuseIdentifier: "CellTest")
    }

}

extension TableViewTestVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CellTest", for: indexPath) as? CellTest else {
            return UITableViewCell()
        }
        cell.bind(stt: "\(indexPath.row + 1)")
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }
}
