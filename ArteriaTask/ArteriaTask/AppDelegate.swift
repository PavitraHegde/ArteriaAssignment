//
//  AppDelegate.swift
//  ArteriaTask
//
//  Created by Pavitra on 07/08/20.
//  Copyright © 2020 Pavitra Hegde. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.navigationBarModification()
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }

    func navigationBarModification() {
          let attrs = [
              NSAttributedString.Key.foregroundColor: UIColor.white,
             // NSAttributedString.Key.font: UIFont(name: "Avenir Next Demi Bold", size: 17)!
          ]
           UINavigationBar.appearance().barTintColor = UIColor(red: 51.0/255.0, green: 95.0/255.0, blue: 132.0/255.0, alpha: 1.0)
          UINavigationBar.appearance().titleTextAttributes = attrs
      }

}

