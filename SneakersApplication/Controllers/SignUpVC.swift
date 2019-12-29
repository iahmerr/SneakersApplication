//
//  SignUpVC.swift
//  SneakersApplication
//
//  Created by Ahmer Hassan on 28/12/2019.
//  Copyright © 2019 Ahmer Hassan. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase
import FirebaseFirestore

class SignUpVC: UIViewController {

    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var email: UITextField!
     @IBOutlet weak var password: UITextField!
     @IBOutlet weak var number: UITextField!
    @IBOutlet weak var showError: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        showError.alpha = 0
        navigationItem.title = "SignUp"
        // Do any additional setup after loading the view.
    }
    
    func ValidateInputs() -> String? {
        if firstName.text?.trimmingCharacters(in: .whitespacesAndNewlines) == ""
            || lastName.text?.trimmingCharacters(in: .whitespacesAndNewlines) == ""
            || email.text?.trimmingCharacters(in: .whitespacesAndNewlines) == ""
            || password.text?.trimmingCharacters(in: .whitespacesAndNewlines) == ""
            || number.text?.trimmingCharacters(in: .whitespacesAndNewlines) == ""
        {
            return "please fill in all fields"
        }
        
    //    let cleanedPassword = password.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
//        if Utilities.validatePassword(cleanedPassword) == false {
//            return "Password isnt strong enough"
//        }
        return nil
    }
    
@IBAction func SignUpTapped(_ sender: Any) {
    print("Signup Tapped")
    // validate the fields
    let error = ValidateInputs()
    if error != nil {
        // there's something wrong with the fields.
        ShowError(error!)
        
    }
    else {
        // Credentials are
                     
        let fName = self.firstName.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let lName = self.lastName.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let email = self.email.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let phone = self.number.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let password = self.password.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        // create user
        Auth.auth().createUser(withEmail: email, password: password) { (result, err) in
            if err != nil {
                self.ShowError("Error Creating User")
            }
            else {
             
                // User created. Save credentials in Firestore
                let db = Firestore.firestore()
                db.collection("users").addDocument(data: ["firstName":fName, "lastName":lName, "number": phone, "uid": result!.user.uid]) { (error) in
                    if error != nil {
                        self.ShowError("User cant be saved")
                    }
                }
                // go to Home screen
                
                self.GotoHome()
                
            }
        }
    }
    
    }
    
    func ShowError(_ message : String)  {
        showError.text = message
        showError.alpha = 1
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