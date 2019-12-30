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
        layer.backgroundColor = UIColor.black.cgColor
    }
}
class Utilities {
    static func validatePassword(_ password: String) -> Bool {
       let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}")
        return passwordTest.evaluate(with: password)
    }
}
