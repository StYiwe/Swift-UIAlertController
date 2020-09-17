//
//  ViewController.swift
//  Swift-UIAlertController
//
//  Created by StYiWe on 2020/9/17.
//  Copyright © 2020 stYiwe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //MARK: - 普通提示框
    @IBAction func btn1(_ sender: Any) {
        
        let alertC = UIAlertController.init(title: "温馨提示", message: "现在开始走运了", preferredStyle: .alert)
        
        alertC.addAction(UIAlertAction.init(title: "好的", style: .default, handler: nil))
        
        present(alertC, animated: true, completion: nil)
    }
    
    //MARK: - 类似删除操作提示框
    @IBAction func btn2(_ sender: Any) {
        
        let alertC = UIAlertController.init(title: "温馨提示", message: "确定删除BUG吗？", preferredStyle: .alert)
        
        alertC.addAction(UIAlertAction.init(title: "删除", style: .destructive, handler: { (action) in
            print("删除")
        }))
        
        alertC.addAction(UIAlertAction.init(title: "取消", style: .cancel, handler: nil))
        
        present(alertC, animated: true, completion: nil)
    }
    
    //MARK: - 带一个textField提示框
    @IBAction func btn3(_ sender: Any) {
        
        let alertC = UIAlertController.init(title: "添加数据", message: nil, preferredStyle: .alert)
        
        //添加textField
        alertC.addTextField { (textField) in
            //这里对textField进行设置
            textField.placeholder = "请添加内容"
//            textField.backgroundColor = .green//设置背景色
        }
        
        alertC.addAction(UIAlertAction.init(title: "确定", style: .default, handler: { (action) in
            //这里获取textField的内容进行操作
            let text = (alertC.textFields?.first)!.text!
            print("输入的内容:\(text)")
            
            //也可以先实例个textField
            let textF1 = (alertC.textFields?.first)! as UITextField
            print("输入的内容：\(textF1.text!)")
            
        }))
        
        present(alertC, animated: true, completion: nil)
        
    }
    
    //MARK: - 类似登录带两个textField的提示框
    @IBAction func btn4(_ sender: Any) {
        
        let alertC = UIAlertController.init(title: "登录", message: nil, preferredStyle: .alert)
        
        //添加textField
        alertC.addTextField { (textField) in
            textField.placeholder = "输入帐号"
        }
        
        alertC.addTextField { (textField) in
            textField.placeholder = "输入密码"
            textField.isSecureTextEntry = true//密文显示
        }
        
        alertC.addAction(UIAlertAction.init(title: "登录", style: .default, handler: { (action) in
            //输入的帐号
            let text1 = (alertC.textFields?.first)!.text!
            
            //输入的密码
            let text2 = (alertC.textFields?.last)!.text!
            
            print("帐号：\(text1)\n密码：\(text2)")
            
        }))
        
        alertC.addAction(UIAlertAction.init(title: "取消", style: .cancel, handler: nil))
        
        present(alertC, animated: true, completion: nil)
    }
    
    //MARK: - ActionSheet
    @IBAction func btn5(_ sender: Any) {
        
        let alertC = UIAlertController.init(title: "温馨提示", message: "你准备好了吗？", preferredStyle: .actionSheet)
        
        alertC.addAction(UIAlertAction.init(title: "准备好了", style: .destructive, handler: { (action) in
            print("万事俱备")
        }))
        
        alertC.addAction(UIAlertAction.init(title: "取消", style: .cancel, handler: nil))
        
        present(alertC, animated: true, completion: nil)
    }
    
}

