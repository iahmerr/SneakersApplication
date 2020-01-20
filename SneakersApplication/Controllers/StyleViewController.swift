//
//  StyleViewController.swift
//  SneakersApplication
//
//  Created by Ahmer Hassan on 12/01/2020.
//  Copyright © 2020 Ahmer Hassan. All rights reserved.
//

import UIKit

class StyleViewController: UIViewController {
    
    let shoeArray = ["shoe1","shoe2","shoe3","shoe4","shoe5"]
    let shoeArray2 = ["shoe5","shoe4","shoe3","shoe2","shoe1"]
    
    @IBOutlet weak var collectionView2: UICollectionView!
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
}
extension StyleViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return shoeArray.count

    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.collectionView {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StyleCollectionCell", for: indexPath) as! StyleCollectionCell
                cell.firstImage.image = UIImage(named: shoeArray[indexPath.row])
                return cell
        }
        else {
        let cell2 = collectionView2.dequeueReusableCell(withReuseIdentifier: "StyleCell", for: indexPath) as! StyleCollectionCell
            cell2.secondImage.image = UIImage(named: shoeArray2[indexPath.row])

            return cell2
        }
}
}
    
    
    
    

