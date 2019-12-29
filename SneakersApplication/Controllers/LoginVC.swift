//
//  LoginVC.swift
//  SneakersApplication
//
//  Created by Ahmer Hassan on 28/12/2019.
//  Copyright © 2019 Ahmer Hassan. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseFirestore

class LoginVC: UIViewController {

    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Log In"
        errorLabel.alpha = 0
        // Do any additional setup after loading the view.
    }
    

    @IBAction func loginTapped(_ sender: Any) {
        print("Login tapped")
        // validate credentials
        let email = emailText.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let password = passwordText.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        print("email", email, "password \(password)")
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            if error != nil {
                self.errorLabel.text = "Something's went wrong. Check error"
                self.errorLabel.alpha = 1
            }
            else {
                self.GotoHome()
                
            }
        }
    }
    func GotoHome()  {
           let storyboard = UIStoryboard(name: "Main", bundle: nil)
           let vc = storyboard.instantiateViewController(withIdentifier: "LoggedIn") as! HomeViewController
           vc.modalPresentationStyle = .fullScreen
           self.navigationController?.pushViewController(vc, animated: true)
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
