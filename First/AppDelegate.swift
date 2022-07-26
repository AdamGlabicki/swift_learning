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
        let navigationControler = UINavigationController()
        let viewContoller = ViewController()
        navigationControler.setViewControllers([viewContoller], animated: false)
        window.rootViewController = navigationControler
        window.makeKeyAndVisible()
        
        return true
    }

}

