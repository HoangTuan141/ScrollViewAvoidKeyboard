//
//  CellTest.swift
//  ScrollViewAvoidKeyboard
//
//  Created by Tuan Hoang Anh on 14/06/2021.
//

import UIKit

class CellTest: UITableViewCell {
    @IBOutlet weak var labelTest: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func bind(stt: String) {
        self.labelTest.text = stt
    }
}
