//
//  SneakersView.swift
//  SneakersApplication
//
//  Created by Ahmer Hassan on 20/01/2020.
//  Copyright © 2020 Ahmer Hassan. All rights reserved.
//

import UIKit

class SneakersView: UIView {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var jordanRoundView: UIView!
    
     @IBOutlet weak var jordanTableView: UITableView!
     // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    
    let utility = Utilities()
    @IBOutlet weak var justDroppedCollection: UICollectionView!
    let home = HomeViewController()
    override func awakeFromNib() {
        jordanRoundView.layer.cornerRadius = 6
        jordanRoundView.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        jordanRoundView.layer.borderWidth = 2
        justDroppedCollection.dataSource = self
        justDroppedCollection.delegate = self
        jordanTableView.delegate = self
        jordanTableView.dataSource = self
        scrollView.alwaysBounceHorizontal = false
        scrollView.contentSize = CGSize(width: 250, height: 2009)
        scrollView.clipsToBounds = true
        self.justDroppedCollection.register(JustDroppedCell.self, forCellWithReuseIdentifier: "JustDroppedCell")
             let nibCell = UINib(nibName: "JustDroppedCell", bundle: nil)
             justDroppedCollection.register(nibCell, forCellWithReuseIdentifier: "JustDroppedCell")
        
        self.jordanTableView.register(AirJordanCell.self, forCellReuseIdentifier: "AirJordanCell")
        let nibT = UINib(nibName: "AirJordanCell", bundle: nil)
        jordanTableView.register(nibT, forCellReuseIdentifier: "AirJordanCell")
        
    }

}
extension SneakersView: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        utility.imagesArray.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let jdCell = justDroppedCollection.dequeueReusableCell(withReuseIdentifier: "JustDroppedCell", for: indexPath) as! JustDroppedCell
        jdCell.shoeImage.image = UIImage(named: utility.imagesArray[indexPath.row])
        jdCell.descriptionLabel.text = "this is my shoes"
        return jdCell
    }


}
extension SneakersView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
           
        let width  = (self.justDroppedCollection.frame.width)/1.4
        print(width)
        return CGSize(width: width, height: 300)
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
extension SneakersView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return utility.imagesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = jordanTableView.dequeueReusableCell(withIdentifier: "AirJordanCell", for: indexPath) as! AirJordanCell
        cell.JordanImage.image = UIImage(named: utility.imagesArray[indexPath.row])
        cell.jordanLabel.text = "This is Jordan Shoes"
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    
}
