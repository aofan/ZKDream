//
//  ZKLifeNavigationController.swift
//  ZKDream
//
//  Created by Li,Zhikai on 2018/12/4.
//  Copyright © 2018年 Li,Zhikai. All rights reserved.
//

import UIKit

class ZKLifeNavigationController: ZKBaseNavigationController {
    
    convenience init() {
        self.init(rootViewController: UIViewController())
        self.tabBarItem.title = "生活"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
