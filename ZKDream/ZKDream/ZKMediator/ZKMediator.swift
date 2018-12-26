//
//  ZKMediator.swift
//  ZKDream
//
//  Created by Li,Zhikai on 2018/12/4.
//  Copyright © 2018年 Li,Zhikai. All rights reserved.
//

import UIKit

class ZKMediator: NSObject {
    
    static let sharedMediator = ZKMediator()
    
    
    /// 中介者执行入口方法
    ///
    /// - Parameters:
    ///   - targetName: 对象名称
    ///   - actionName: 方法名称注意方法名字：1.不带参数的直接方法名(Swift方法getUser()对应getUser) 2.带参数的注意With会自动给方法加上(getUser( id : String) 对应 getUserWithId:)
    ///   - param: 参数一般是字典
    /// - Returns: 要获取的对象
    func performTarget(targetName : String, actionName : String, param : Any? = nil ) -> Any?  {
        
        guard let spaceName = SPACE_NAME else {
            print("⚠️命名空间没有获取到！")
            return nil
        }
        
        let cls: AnyClass? = NSClassFromString(spaceName + "." + targetName)
        
        guard let typeClass = cls as? NSObject.Type else {
            print("⚠️类不是NSObject类型！")
            return nil
        }
        
        let target = typeClass.init()
        let Sel = Selector(actionName)
        
        // 由于runtime机制是oc的所以要调用的方法必须是oc的方法 需要方法名称前面加上objc
        // 后期看看有没有更优的处理方法
        if target.responds(to: Sel) {
            return target.perform(Sel, with: param)?.takeRetainedValue()
        }
        return target
    }

}
