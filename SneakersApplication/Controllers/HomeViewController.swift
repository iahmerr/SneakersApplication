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
    @IBOutlet weak var apparelBottomBar: UIView!
    @IBOutlet weak var calenderBottomBar: UIView!
    @IBOutlet weak var sneakersButton: UIButton!
    @IBOutlet weak var apparelButton: UIButton!
    @IBOutlet weak var calenderButton: UIButton!
    let utility = Utilities()

    @IBOutlet weak var insideView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.sneakerBottonBar.backgroundColor = .white
        self.apparelBottomBar.backgroundColor = .black
        self.calenderBottomBar.backgroundColor = .black
       
        
    }
  
    @IBAction func sneakersPressed(_ sender: Any) {
        self.sneakerBottonBar.backgroundColor = .white
        self.apparelBottomBar.backgroundColor = .black
        self.calenderBottomBar.backgroundColor = .black
        
    }
    
    @IBAction func apparelPressed(_ sender: Any) {
        self.apparelBottomBar.backgroundColor = .white
        self.sneakerBottonBar.backgroundColor = .black
        self.calenderBottomBar.backgroundColor = .black
        
    }
    
    @IBAction func calenderPressed(_ sender: Any) {
        self.calenderBottomBar.backgroundColor = .white
        self.apparelBottomBar.backgroundColor = .black
        self.sneakerBottonBar.backgroundColor = .black
     let newView = Bundle.main.loadNibNamed("CalenderCollectionView", owner: self, options: nil)?.first 
        insideView.addSubview(newView as! UIView)
     
    }
    
    
}
