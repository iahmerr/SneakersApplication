//
//  AirJordanCell.swift
//  SneakersApplication
//
//  Created by Ahmer Hassan on 21/01/2020.
//  Copyright © 2020 Ahmer Hassan. All rights reserved.
//

import UIKit

class AirJordanCell: UITableViewCell {

    @IBOutlet weak var JordanImage: UIImageView!
    @IBOutlet weak var jordanLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
