//
//  AppDelegate.swift
//  First
//
//  Created by Adam Głąbicki Airnauts on 25/07/2022.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    let window: UIWindow
    
    override init() {
        self.window = UIWindow()
    }


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let navigationController = UINavigationController()
        let viewContoller = ViewController()
        navigationController.setViewControllers([viewContoller], animated: false)
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        
        return true
    }

}

