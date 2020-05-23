//
//  RootNavViewController.swift
//  DXJItem
//
//  Created by 董雪娇 on 2020/5/14.
//  Copyright © 2020 董雪娇. All rights reserved.
//

import UIKit

class RootNavViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    //push 二层时隐藏tabbar
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if self.children.count == 1 {
            viewController.hidesBottomBarWhenPushed = true
        }
        super.pushViewController(viewController, animated: animated)
    }


}
