//
//  ViewController.swift
//  SneakersApplication
//
//  Created by Ahmer Hassan on 21/12/2019.
//  Copyright © 2019 Ahmer Hassan. All rights reserved.
//

import UIKit
import FacebookCore
import FacebookLogin
import GoogleSignIn





class ViewController: UIViewController, GIDSignInDelegate{
  
    

    override func viewDidLoad() {
        super.viewDidLoad()
        GIDSignIn.sharedInstance().delegate=self
        // Do any additional setup after loading the view.
    }

    @IBAction func loginwithFacebook(_ sender: Any) {
 let loginManager = LoginManager()
        loginManager.logIn(
        permissions: [.publicProfile, .email],
        viewController: self
    ) { (result) in
        switch result {
        case .cancelled:
            print("Facebook Authentication Cancelled")
            break

        case .failed(let error):
            print("Facebook Authentication failed \(error.localizedDescription)")
            break

        case .success(let grantedPermission, _, let accessToken):
            print("Access Toekn is \(accessToken)")
            print("Granted permission \(grantedPermission)")

        }


    }
    
        getLoginDetails()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "LoggedIn")
        self.navigationController?.pushViewController(vc, animated: true)
        
       
    }
    
   func getLoginDetails() {
 
 
    }
   
   
    @IBAction func loginWithInstagram(_ sender: Any) {
        GIDSignIn.sharedInstance()?.presentingViewController = self
        GIDSignIn.sharedInstance().signIn()
        
     
    }
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
         if let error = error {
           if (error as NSError).code == GIDSignInErrorCode.hasNoAuthInKeychain.rawValue {
             print("The user has not signed in before or they have since signed out.")
           } else {
             print("\(error.localizedDescription)")
           }
           return
         }
//         // Perform any operations on signed in user here.
//         let userId = user.userID                  // For client-side use only!
//         let idToken = user.authentication.idToken // Safe to send to the server
         let fullName = user.profile.name
         let givenName = user.profile.givenName
//         let familyName = user.profile.familyName
         let email = user.profile.email
        print("fullName is \(String(describing: fullName))")
        print("givenName is \(String(describing: givenName))")
        print("Email is\(String(describing: email))")
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "LoggedIn") as! HomeViewController
        vc.emailText.text = email
        vc.nameText.text = fullName
        vc.welcomeLabel.text = "Logged In using Google Account"
    }
    
    
}

