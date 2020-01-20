//
//  SearchVC.swift
//  SneakersApplication
//
//  Created by Ahmer Hassan on 19/01/2020.
//  Copyright © 2020 Ahmer Hassan. All rights reserved.
//

import UIKit

class SearchVC: UIViewController {

       let searchOptions = ["UNDER RETAIL", "INSTANT SHIP", "MEN", "WOMEN", "YOUTH"]
    let utilities = Utilities()
    @IBOutlet weak var collectionViewA: UICollectionView!
    @IBOutlet weak var collectionViewB: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionViewB.register(CalenderCell.self, forCellWithReuseIdentifier: "CalenderCell")
        let nib = UINib(nibName: "CalenderCell", bundle: nil)
        collectionViewB.register(nib, forCellWithReuseIdentifier: "CalenderCell")
        
        
 
    }
    


}
extension SearchVC: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.collectionViewA {
        return self.searchOptions.count
        }
        else {
        print("in else")
            return utilities.imagesArray.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.collectionViewA {
        let cell = collectionViewA.dequeueReusableCell(withReuseIdentifier: "searchCollectionCell", for: indexPath) as! SneakersCollectionCell
        cell.cellLabel.text = self.searchOptions[indexPath.row]
            
        return cell
        }
        else  {
            let cellB = collectionViewB.dequeueReusableCell(withReuseIdentifier: "CalenderCell", for: indexPath) as! CalenderCell
            cellB.discriptionLabel.text = "These Shoes are Best"
            cellB.priceLabel.text = "$200"
            cellB.dateLabel.text = ""
            cellB.shoeImage.image = UIImage(named: utilities.imagesArray[indexPath.row])
           // print(utilities.imagesArray[indexPath.row])
            return cellB
        }
    }

   
}
extension SearchVC: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        if collectionView == collectionViewB{
        let width  = (self.view.frame.width)/16
        print(width)
        return CGSize(width: width, height: 400)
        }
        else {
            return CGSize(width: 70, height: 50)
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        if collectionView == collectionViewB{
            return 0
        }
        else {
        return 10
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        if collectionView == collectionViewB {
        return 0
        }
        else {
            return 20
        }
    }
    
    
    
  
    


}




