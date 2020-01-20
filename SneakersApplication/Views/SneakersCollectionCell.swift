//
//  SneakersCollectionCell.swift
//  SneakersApplication
//
//  Created by Ahmer Hassan on 19/01/2020.
//  Copyright © 2020 Ahmer Hassan. All rights reserved.
//

import UIKit

class SneakersCollectionCell: UICollectionViewCell {

    @IBOutlet weak var cellLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        layer.borderColor = UIColor.black.cgColor
        layer.borderWidth = 1
        layer.cornerRadius = 3
        
    }

}
