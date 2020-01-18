//
//  HomeViewController.swift
//  SneakersApplication
//
//  Created by Ahmer Hassan on 24/12/2019.
//  Copyright © 2019 Ahmer Hassan. All rights reserved.
//

import UIKit


class HomeViewController: UIViewController {
    
    @IBOutlet weak var sneakerBottonBar: UIView!
   
    @IBOutlet weak var calenderBottomBar: UIView!
    @IBOutlet weak var sneakersButton: UIButton!

    let utility = Utilities()

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var insideView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.sneakerBottonBar.backgroundColor = .black
        self.calenderBottomBar.backgroundColor = .white
        
        let itemSize = UIScreen.main.bounds.width/2
              let layout = UICollectionViewFlowLayout()
              layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
              layout.itemSize = CGSize(width: itemSize, height: 400)
              layout.minimumLineSpacing = 0
              layout.minimumInteritemSpacing = 0
              collectionView.collectionViewLayout = layout
   
    }
  
    @IBAction func sneakersPressed(_ sender: Any) {
        self.sneakerBottonBar.backgroundColor = .white
        self.calenderBottomBar.backgroundColor = .black
        collectionView.isHidden = true
        
    }

    @IBAction func calenderPressed(_ sender: Any) {
       self.sneakerBottonBar.backgroundColor = .black
        self.calenderBottomBar.backgroundColor = .white
        collectionView.isHidden = false
    }
   
}
extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return utility.homeMenu.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = self.collectionView.dequeueReusableCell(withReuseIdentifier: "CalenderCell", for: indexPath) as! CalenderCell
        cell.dateLabel.text = "date"
        cell.priceLabel.text = "$200"
        cell.discriptionLabel.text = "hey hey description"
        cell.pictureImage.image = UIImage(named: utility.imagesArray[indexPath.row])
        return cell
    }
    
    
}
extension HomeViewController: UICollectionViewDelegateFlowLayout {

    
}

