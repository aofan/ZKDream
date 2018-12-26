//
//  ZKMediator+MyActions.swift
//  ZKDream
//
//  Created by Li,Zhikai on 2018/12/26.
//  Copyright © 2018年 Li,Zhikai. All rights reserved.
//

import UIKit

extension ZKMediator {
    
    func ZKMediator_getMyNavigationController() -> ZKBaseNavigationController {
        // ⚠️调用看#import "ZKDream-Swift.h" 注意方法名字 有点坑
        guard let navC = self.performTarget(targetName: "ZKMyActions", actionName: "Action_getMyNavigationController") as?  ZKBaseNavigationController else {
            return ZKBaseNavigationController()
        }
        
        return navC
        
    }
    
}
