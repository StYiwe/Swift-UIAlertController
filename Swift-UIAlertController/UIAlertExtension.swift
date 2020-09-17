//
//  UIAlertExtension.swift
//  Swift-UIAlertController
//
//  Created by StYiWe on 2020/9/17.
//  Copyright © 2020 stYiwe. All rights reserved.
//

import Foundation
import UIKit

extension UIAlertController {
    
    /// 普通提示框
    /// - Parameters:
    ///   - title: title
    ///   - message: message
    ///   - actionTitle: 按钮文本
    ///   - animated: 是否要动画
    ///   - viewController: 在什么控制器显示弹框
    static func showAlert(title: String, message: String, actionTitle: String, animated: Bool, in viewController: UIViewController) {
        let alertC = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        alertC.addAction(UIAlertAction(title: actionTitle, style: .cancel, handler: nil))
        
        viewController.present(alertC, animated: animated, completion: nil)
    }
    
    
    /// 需要一个按钮回调的提示框
    /// - Parameters:
    ///   - title: title
    ///   - message: message
    ///   - actionTitle: 按钮文本
    ///   - animated: 是否要动画
    ///   - viewController: 在什么控制器显示弹框
    ///   - comfirm: 回调
    static func showAlertComfirm(title: String, message: String, actionTitle: String, animated: Bool, in viewController: UIViewController, comfirm: ((UIAlertAction)-> Void)?) {
        let alertC = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        alertC.addAction(UIAlertAction(title: "取消", style: .cancel, handler: nil))
        
        alertC.addAction(UIAlertAction(title: actionTitle, style: .default, handler: comfirm))
        
        viewController.present(alertC, animated: animated, completion: nil)
    }
    
    
}

