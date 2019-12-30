//
//  HomeViewController.swift
//  SneakersApplication
//
//  Created by Ahmer Hassan on 24/12/2019.
//  Copyright © 2019 Ahmer Hassan. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var nameText: UILabel!
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var emailText: UILabel!
    var passed : Bool = false
    var name = ""
    var email = ""
    var welcome = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeLogs()
        self.navigationController?.isNavigationBarHidden = true
        
    }
    
    func changeLogs()  {
        if passed == true {
            nameText.text = name
            welcomeLabel.text = welcome
            emailText.text = email
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
