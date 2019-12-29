//
//  AppDelegate.swift
//  SneakersApplication
//
//  Created by Ahmer Hassan on 21/12/2019.
//  Copyright © 2019 Ahmer Hassan. All rights reserved.
//

import UIKit
import FacebookCore
import GoogleSignIn
import FBSDKCoreKit
import FBSDKLoginKit
import Firebase



@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, GIDSignInDelegate {
    
    



  func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
    Thread.sleep(forTimeInterval: 1)
    FirebaseApp.configure()
        // Override point for customization after application launch.
        
    GIDSignIn.sharedInstance()?.clientID = "1047773442594-jrsr54c6cjcap4dqh8fbhnbmu5olhltv.apps.googleusercontent.com"
    GIDSignIn.sharedInstance()?.delegate = self
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
  

  func application(_ application: UIApplication,
                   open url: URL, sourceApplication: String?, annotation: Any) -> Bool {
    return GIDSignIn.sharedInstance().handle(url)
  }
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
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
        // Perform any operations on signed in user here.
        let userId = user.userID                  // For client-side use only!
      //  let idToken = user.authentication.idToken // Safe to send to the server
        let fullName = user.profile.name
//        let givenName = user.profile.givenName
//        let familyName = user.profile.familyName
        let email = user.profile.email
        print(userId as Any)
        print(fullName as Any)
        print(email as Any)
    }
    func sign(_ signIn: GIDSignIn!, didDisconnectWith user: GIDGoogleUser!, withError error: Error!) {
        print("User Disconnected")
    }

}

