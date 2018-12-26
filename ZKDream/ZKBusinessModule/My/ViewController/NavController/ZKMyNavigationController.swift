//
//  ZKMyNavigationController.swift
//  ZKDream
//
//  Created by Li,Zhikai on 2018/12/4.
//  Copyright © 2018年 Li,Zhikai. All rights reserved.
//

import UIKit

class ZKMyNavigationController: ZKBaseNavigationController {
    
    convenience init() {
        self.init(rootViewController: UIViewController())
        self.tabBarItem.title = "我的"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
