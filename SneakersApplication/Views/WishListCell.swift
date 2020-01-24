//
//  WishListCell.swift
//  SneakersApplication
//
//  Created by Ahmer Hassan on 21/01/2020.
//  Copyright © 2020 Ahmer Hassan. All rights reserved.
//

import UIKit

class WishListCell: UITableViewCell {
    
    @IBOutlet weak var innerView: UIView!
    
    @IBOutlet weak var showImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    override func awakeFromNib() {
        
        showImage.layer.borderWidth = 1.5
        showImage.layer.borderColor = UIColor.black.cgColor
        showImage.clipsToBounds = true
       // innerView.backgroundColor = #colorLiteral(red: 0.1933692893, green: 0.1933692893, blue: 0.1933692893, alpha: 1)
        innerView.layer.cornerRadius = 10
        imageView?.layer.borderColor = UIColor.black.cgColor
        imageView?.layer.borderWidth = 5
    }
    
}
protocol CellButtons {
    func AddAmount()
    func SubtractAmount()
    
    
}
