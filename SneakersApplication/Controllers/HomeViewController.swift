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


    @IBOutlet weak var insideView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.sneakerBottonBar.backgroundColor = .black
        self.calenderBottomBar.backgroundColor = .white
        if let newView = UINib(nibName: "CalenderCollectionView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as? CalenderCollectionView {
            newView.frame.size = self.insideView.frame.size
            self.insideView.addSubview(newView)
            
        }
       
   
    }
  
    @IBAction func sneakersPressed(_ sender: Any) {
        self.sneakerBottonBar.backgroundColor = .white
        self.calenderBottomBar.backgroundColor = .black
        if let newView = UINib(nibName: "SneakersView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as? SneakersView {
            newView.frame.size = self.insideView.frame.size
            self.insideView.addSubview(newView)
        }
   
   
        
    }

    @IBAction func calenderPressed(_ sender: Any) {
       self.sneakerBottonBar.backgroundColor = .black
        self.calenderBottomBar.backgroundColor = .white
        if let newView = UINib(nibName: "CalenderCollectionView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as? CalenderCollectionView {
        newView.frame.size = self.insideView.frame.size
        self.insideView.addSubview(newView)
       
    }
   
}
}
