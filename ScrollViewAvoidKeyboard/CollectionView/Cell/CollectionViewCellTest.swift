//
//  CollectionViewCellTest.swift
//  ScrollViewAvoidKeyboard
//
//  Created by Tuan Hoang Anh on 27/06/2021.
//

import UIKit

class CollectionViewCellTest: UICollectionViewCell {
    @IBOutlet weak var numericalOrderLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func setNumericalOrder(_ numericalOrder: String) {
        self.numericalOrderLabel.text = numericalOrder
    }
}
