//
//  AppDelegate.swift
//  SwiftProject
//
//  Created by 欧嘉明 on 2022/1/18.
//

import UIKit
import IQKeyboardManagerSwift

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = .white
        
        configLoginWindow()
        configIQKeyBoard()
        return true
    }

    func configWindow(){
//        if !UserDefaults.standard.bool(forKey: "isFirst"){
//            UserDefaults.standard.set(true, forKey: "isFirst")
//            self.configLoginWindow()
//            return
//        }
        configLoginWindow()
    }
    
    ///跳转登录页
    func configLoginWindow(){
        let loginVC = LoginVC()
        let nav = BaseNavigationViewController.init(rootViewController: loginVC)
        self.window?.rootViewController = nav
        window?.makeKeyAndVisible()
    }
    
    ///跳转首页
    func configMainWindow(){
        let mainVC = MainTabBarVC()
        let nav = BaseNavigationViewController.init(rootViewController: mainVC)
        self.window?.rootViewController = nav
        window?.makeKeyAndVisible()
    }
    
    func configIQKeyBoard() {
        let manager = IQKeyboardManager.shared
        manager.enable = true
        manager.keyboardDistanceFromTextField = 20
        manager.enableAutoToolbar = false
        manager.shouldResignOnTouchOutside = true
//        IQKeyboardManager.shared.disabledDistanceHandlingClasses
    }
}

