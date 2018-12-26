//
//  ZKMyActions.swift
//  ZKDream
//
//  Created by Li,Zhikai on 2018/12/26.
//  Copyright © 2018年 Li,Zhikai. All rights reserved.
//

import UIKit

/// 暴漏给外部调用的类
class ZKMyActions: NSObject {

    @objc func Action_getMyNavigationController() -> ZKMyNavigationController {
        let navC = ZKMyNavigationController()
        return navC;
    }

}
