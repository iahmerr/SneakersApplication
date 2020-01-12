//
//  Utilities.swift
//  SneakersApplication
//
//  Created by Ahmer Hassan on 29/12/2019.
//  Copyright © 2019 Ahmer Hassan. All rights reserved.
//

import Foundation
import UIKit

class ButtonInterface: UIButton {
    override func awakeFromNib() {
        
        layer.borderWidth = 1
        layer.borderColor = UIColor.black.cgColor
    }
}
class Utilities {
    
    let homeMenu = ["This is SNEAKERS", "This is APPAREL", "This is CALENDER","This is SNEAKERS", "This is APPAREL", "This is CALENDER" ]
    let imagesArray = ["shoe1","shoe2","shoe3","shoe4","shoe5", "shoe1"]
    static func validatePassword(_ password: String) -> Bool {
       let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}")
        return passwordTest.evaluate(with: password)
    }
}
