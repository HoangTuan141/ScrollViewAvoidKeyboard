//
//  CollectionViewTestVC.swift
//  ScrollViewAvoidKeyboard
//
//  Created by Tuan Hoang Anh on 27/06/2021.
//

import UIKit

class CollectionViewTestVC: UIViewController {
    @IBOutlet weak var collectionView: UICollectionViewAvoidKeyboard!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Collection View"
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: "CollectionViewCellTest", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCellTest")
    }

}

extension CollectionViewTestVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 15
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCellTest", for: indexPath) as? CollectionViewCellTest else { return UICollectionViewCell() }
        cell.setNumericalOrder("\(indexPath.row + 1)")
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (self.view.frame.width / 3) + 50
        return CGSize(width: width, height: 150)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
}
