//
//  CalenderCell.swift
//  SneakersApplication
//
//  Created by Ahmer Hassan on 11/01/2020.
//  Copyright © 2020 Ahmer Hassan. All rights reserved.
//

import UIKit

class CalenderCell: UICollectionViewCell {

    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var shoeImage: UIImageView!
    @IBOutlet weak var discriptionLabel: UILabel!
    

    
    override func awakeFromNib() {
        layer.borderWidth = 0.3
    }
   

}
