//
//  RootTabViewController.swift
//  DXJItem
//
//  Created by 董雪娇 on 2020/3/8.
//  Copyright © 2020 董雪娇. All rights reserved.
//

import UIKit
import MBasis
import MGJRouter

class RootTabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let vcA = MGJRouter.object(forURL: URLObjectTestA) as? UIViewController {
            let nav = RootNavViewController(rootViewController: vcA)
            nav.tabBarItem.title = "TestA"
            self.addChild(nav)
        }
        
        //崩溃。。。
//        if let vc2 = MGJRouter.object(forURL: URLWITHTestB) as? UIViewController {
//            
//        }
        
        if let vcB = MGJRouter.object(forURL: URLObjectTestB) as? UIViewController {
            let nav = RootNavViewController(rootViewController: vcB)
            nav.tabBarItem.title = "mgj:TestB"
            self.addChild(nav)
        }
        
        if let vcC = MGJRouter.object(forURL: URLObjectTestC) as? UIViewController {
            let nav = RootNavViewController(rootViewController: vcC)
            nav.tabBarItem.title = "mgj:TestC"
            self.addChild(nav)
        }
        /*
         #CTMediator方式初始化
        if let vc1 = CTMediator.sharedInstance().A_ShowMainA_ViewController([:]) {
            let nav = RootNavViewController(rootViewController: vc1)
            nav.tabBarItem.title = "TestA"
            self.addChild(nav)
        }
        
        let vc2 = CTMediator.sharedInstance().A_ShowMainB_ViewController([:]) { (result) in
            self.noticeOnlyText("A_ShowMainB_ViewController:" + result)
        }
        if let vc = vc2 {
            let nav = RootNavViewController(rootViewController: vc)
            nav.tabBarItem.title = "TestB"
            self.addChild(nav)
        }
        
        if let vc3 = CTMediator.sharedInstance().A_ShowMainC_ViewController([:]) {
            let nav = RootNavViewController(rootViewController: vc3)
            nav.tabBarItem.title = "TestC"
            self.addChild(nav)
        }
*/
    }

}
