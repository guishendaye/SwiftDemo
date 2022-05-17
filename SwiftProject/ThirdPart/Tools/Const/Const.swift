//
//  Const.swift
//  SwiftProject
//
//  Created by 欧嘉明 on 2022/2/15.
//

import Foundation
import UIKit
//MARK: 全局调用
@_exported import RxSwift
@_exported import RxCocoa

//MARK: 获取屏幕的宽度高度
let SCREEN_WIDTH = UIScreen.main.bounds.width
let SCREEN_HEIGHT = UIScreen.main.bounds.height
//MARK: 是否iPhone X 系列
let IS_iPHONEX_TYPE: Bool = (SCREEN_WIDTH / SCREEN_HEIGHT ) * 100 == 216
//MARK: 状态栏高度
let STATUS_BAR_HEIGHT = UIApplication.shared.statusBarFrame.size.height
//MARK: 导航栏高度
let NAVIGATION_HEIGHT = STATUS_BAR_HEIGHT + 44
//MARK: 底部安全区高度
let SAFE_BOTTOM_HEIGHT = IS_iPHONEX_TYPE ? 34 : 0
//MARK: 底部导航栏高度
let TABBAR_HEIGHT = IS_iPHONEX_TYPE ? 83.0 : 49.0
//MARK: 获取AppDelegate的对象
let APPDELEGATE = ((UIApplication.shared.delegate) as! AppDelegate)
let KKEYWINDOW = UIApplication.shared.keyWindow
//MARK: 自定义高效率的 NSLog
func debugLog<T>(message: T,
              file: String = #file,
              method: String = #function,
              line: Int = #line)
{
    #if DEBUG
    print("\((file as NSString).lastPathComponent)[\(line)], \(method): \(message)")
    #endif
}
