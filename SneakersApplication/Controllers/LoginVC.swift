//
//  LoginVC.swift
//  SneakersApplication
//
//  Created by Ahmer Hassan on 28/12/2019.
//  Copyright © 2019 Ahmer Hassan. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Log In"
        // Do any additional setup after loading the view.
    }
    

    @IBAction func loginTapped(_ sender: Any) {
        
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
