//
//  CalenderCollectionView.swift
//  SneakersApplication
//
//  Created by Ahmer Hassan on 11/01/2020.
//  Copyright © 2020 Ahmer Hassan. All rights reserved.
//

import UIKit

class CalenderCollectionView: UIView, UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet weak var collectionView: UICollectionView!
    let data = Utilities()
    
    override func awakeFromNib() {
        collectionView.delegate = self
        collectionView.dataSource = self
        //self.collectionView.registerClass(CalenderCell.self, forCellReuseIdentifier: "CalenderCell")
        self.collectionView.register(CalenderCell.self, forCellWithReuseIdentifier: "CalenderCell")
        let nibCell = UINib(nibName: "CalenderCell", bundle: nil)
        collectionView.register(nibCell, forCellWithReuseIdentifier: "CalenderCell")
        collectionView.bounces = true
        collectionView.alwaysBounceVertical = true
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.homeMenu.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CalenderCell", for: indexPath) as! CalenderCell
        cell.dateLabel.text = "20th Jan"
        cell.discriptionLabel.text = "This is my shoe. "
        cell.priceLabel.text = "$200"
      cell.shoeImage.image = UIImage(named: data.imagesArray[indexPath.row])
        return cell
    }
    

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
extension CalenderCollectionView: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
           
      let width  = (self.frame.width)/2
        print(width)
        return CGSize(width: width, height: 400)
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    
    
  
    


}

