//
//  AppDelegate.swift
//  DXJItem
//
//  Created by 董雪娇 on 2020/3/7.
//  Copyright © 2020 董雪娇. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: BaseAppdelegate {
        
    func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        _ = TestAManager.shared.testA_Application(application, willFinishLaunchingWithOptions: launchOptions)
        _ = TestBManager.shared.testB_Application(application, willFinishLaunchingWithOptions: launchOptions)
        _ = TestCManager.shared.testC_Application(application, willFinishLaunchingWithOptions: launchOptions)
        return true
    }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        
        self.window = UIWindow.init(frame: UIScreen.main.bounds)
        self.window?.backgroundColor = .purple
        self.window?.rootViewController = RootTabViewController()
        self.window?.makeKeyAndVisible()
        
        
        return true
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        _ = TestAManager.shared.testA_Application(app, open: url, options: options)
        _ = TestBManager.shared.testB_Application(app, open: url, options: options)
        _ = TestCManager.shared.testC_Application(app, open: url, options: options)
        return true
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        TestAManager.shared.testA_ApplicationWillEnterForeground(application)
        TestBManager.shared.testB_ApplicationWillEnterForeground(application)
        TestCManager.shared.testC_ApplicationWillEnterForeground(application)
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        TestAManager.shared.testA_ApplicationDidEnterBackground(application)
        TestBManager.shared.testB_ApplicationDidEnterBackground(application)
        TestCManager.shared.testC_ApplicationDidEnterBackground(application)
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        TestAManager.shared.testA_ApplicationDidBecomeActive(application)
        TestBManager.shared.testB_ApplicationDidBecomeActive(application)
        TestCManager.shared.testC_ApplicationDidBecomeActive(application)
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        TestAManager.shared.testA_ApplicationWillResignActive(application)
        TestBManager.shared.testB_ApplicationWillResignActive(application)
        TestCManager.shared.testC_ApplicationWillResignActive(application)
    }
}

