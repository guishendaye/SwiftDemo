//
//  BaseNavigationViewController.swift
//  sss
//
//  Created by MAC on 2020/12/24.
//  Copyright © 2020 hrrMac. All rights reserved.
//

import UIKit

class BaseNavigationViewController: UINavigationController, UIGestureRecognizerDelegate, UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        if(self.responds(to: #selector(getter: interactivePopGestureRecognizer))){
            self.interactivePopGestureRecognizer?.delegate = self
        }
        if self.responds(to: #selector(getter: delegate)){
            self.delegate = self;
        }
    }
    
    ///配置导航栏
    func configCustomNavigationBar(_ bgImgStr :String , color : UIColor = UIColor.black , font : UIFont = UIFont.systemFont(ofSize: 18)){
        navigationBar.backgroundColor = UIColor.white
        navigationBar.isTranslucent = false
        
        var textAttributes : [NSAttributedString.Key:AnyObject] = [:]
        textAttributes[.foregroundColor] = color
        textAttributes[.font] = font
        navigationBar.titleTextAttributes = textAttributes
        
        navigationBar.setBackgroundImage( UIImage(named: bgImgStr), for: .any, barMetrics: .default)
        
    }
    
    
    ///配置侧滑返回功能 viewController.closeSilder = ture
    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        if (visibleViewController is BaseViewController){
            let currentVC = visibleViewController as! BaseViewController
            if currentVC.closeSilder {///设置关闭滑动的属性
                return false
            }
        }
        if gestureRecognizer == self.interactivePopGestureRecognizer {///没有上一级VC
            if viewControllers.count < 2 || self.visibleViewController == viewControllers.first {
                return false
            }
        }
        return true
    }

    //MARK: 视图控制器将要显示时调用
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        let classStr = String (describing: viewController.self)
        debugLog(message: String(format: "当前VC + %@", classStr))
        
        if viewController.view.tag == 10086 || (viewController is MainTabBarVC){
            self.setNavigationBarHidden(true, animated: animated)
        }else{
            self.setNavigationBarHidden(false, animated: animated)
        }
    }
}
