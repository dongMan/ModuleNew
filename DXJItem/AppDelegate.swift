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
        
        #if PODMTestA
        _ = TestAManager.shared.testA_Application(application, willFinishLaunchingWithOptions: launchOptions)
        #endif
        
        #if PODMTestB
        _ = TestBManager.shared.testB_Application(application, willFinishLaunchingWithOptions: launchOptions)
        #endif
        
        #if PODMTestC
        _ = TestCManager.shared.testC_Application(application, willFinishLaunchingWithOptions: launchOptions)
        #endif
        
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
        #if PODMTestA
        _ = TestAManager.shared.testA_Application(app, open: url, options: options)
        #endif
        
        #if PODMTestB
        _ = TestBManager.shared.testB_Application(app, open: url, options: options)
        #endif
        
        #if PODMTestC
        _ = TestCManager.shared.testC_Application(app, open: url, options: options)
        #endif
        return true
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        #if PODMTestA
        TestAManager.shared.testA_ApplicationWillEnterForeground(application)
        #endif
        
        #if PODMTestB
        TestBManager.shared.testB_ApplicationWillEnterForeground(application)
        #endif
        
        #if PODMTestC
        TestCManager.shared.testC_ApplicationWillEnterForeground(application)
        #endif
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        #if PODMTestA
        TestAManager.shared.testA_ApplicationDidEnterBackground(application)
        #endif
        
        #if PODMTestB
        TestBManager.shared.testB_ApplicationDidEnterBackground(application)
        #endif
        
        #if PODMTestC
        TestCManager.shared.testC_ApplicationDidEnterBackground(application)
        #endif
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        #if PODMTestA
        TestAManager.shared.testA_ApplicationDidBecomeActive(application)
        #endif
        
        #if PODMTestB
        TestBManager.shared.testB_ApplicationDidBecomeActive(application)
        #endif
        
        #if PODMTestC
        TestCManager.shared.testC_ApplicationDidBecomeActive(application)
        #endif
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        #if PODMTestA
        TestAManager.shared.testA_ApplicationWillResignActive(application)
        #endif
        
        #if PODMTestB
        TestBManager.shared.testB_ApplicationWillResignActive(application)
        #endif
        
        #if PODMTestC
        TestCManager.shared.testC_ApplicationWillResignActive(application)
        #endif
    }
}

