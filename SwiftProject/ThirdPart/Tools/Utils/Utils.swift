//
//  Utils.swift
//  SwiftProject
//
//  Created by 欧嘉明 on 2022/2/18.
//

import UIKit

//MARK: 交换值
func swapTwoValues<T>(_ a : inout T,_ b : inout T){
    let tempA = a
    a = b;
    b = tempA
}

//MARK: 拔打电话
func callToNum(numStr:String){
    let telNum = "tel:" + numStr
    UIApplication.shared.openURL(NSURL(string: telNum)! as URL)
}

//MARK: 字符串判空
func kStringIsEmpty(_ str: String!) -> Bool {
    if str.isEmpty {
        return true
    }
    if str == nil {
        return true
    }
    if str.count < 1 {
        return true
    }
    if str == "(null)" {
        return true
    }
    if str == "null" {
        return true
    }
    return false
}

//MARK: 数组是否为空
func kArrayIsEmpty(_ array: [String]) -> Bool {
    let str: String! = array.joined(separator: "")
    if str == nil {
        return true
    }
    if str == "(null)" {
        return true
    }
    if array.count == 0 {
        return true
    }
    if array.isEmpty {
        return true
    }
    return false
}

//MARK: 字典是否为空
func kDictIsEmpty(_ dict: NSDictionary) -> Bool {
    let str: String! = "\(dict)"
    if str == nil {
        return true
    }
    if str == "(null)" {
        return true
    }
    if dict .isKind(of: NSNull.self) {
        return true
    }
    if dict.allKeys.count == 0 {
        return true
    }
    return false
}


//MARK: disposeBag 扩展
fileprivate var disposeBagContext: UInt8 = 0

extension Reactive where Base: AnyObject {
        
    func synchronizedBag<T>( _ action: () -> T) -> T {
        objc_sync_enter(self.base)
        let result = action()
        objc_sync_exit(self.base)
        return result
    }
    
    var disposeBag: DisposeBag {
            get {
                return synchronizedBag {
                    if let disposeObject = objc_getAssociatedObject(base, &disposeBagContext) as? DisposeBag {
                        return disposeObject
                    }
                    let disposeObject = DisposeBag()
                    objc_setAssociatedObject(base, &disposeBagContext, disposeObject, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
                    return disposeObject
                }
            }
            
            set {
                synchronizedBag {
                    objc_setAssociatedObject(base, &disposeBagContext, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
                }
            }
        }
}

