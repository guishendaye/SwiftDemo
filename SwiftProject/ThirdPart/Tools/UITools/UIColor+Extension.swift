//
//  UIColor+extension.swift
//  SwiftProject
//
//  Created by 欧嘉明 on 2022/3/2.
//

import UIKit

extension UIColor{
    convenience init(r:UInt32 ,g:UInt32 , b:UInt32, a:CGFloat = 1.0) {
        self.init(red: CGFloat(r) / 255.0,
                  green: CGFloat(g) / 255.0,
                  blue: CGFloat(b) / 255.0,
                  alpha: a)
    }
    
    //MARK: 返回一个随机颜色
    class func randomColor() -> UIColor {
        let r = Int(arc4random() % 255 + 1)
        let g = Int(arc4random() % 255 + 1)
        let b = Int(arc4random() % 255 + 1)
        return UIColor.rgb(r, g, b)
    }
    
    //MARK: 返回一个rgb颜色
    class func rgb(_ r: Int, _ g: Int,_ b: Int, alpha: CGFloat = 1.0) -> UIColor {
        return UIColor(red: CGFloat(r)/255.0, green: CGFloat(g)/255.0, blue: CGFloat(b)/255.0, alpha: alpha)
    }
    
    //MARK: 16进制颜色
    @objc class func hex(_ hexString : String) ->UIColor{
        //取出掉空格或者换行符号
        var str: String = hexString.trimmingCharacters(in: .whitespacesAndNewlines)
        ///当颜色小于等于两位字符的时候，即0xFFFFFF  , 0xF5F5F5
        if str.count <= 2 {
            var c:UInt32 = 0x0
            //扫描字符串并且并且将十六进制转为十进制
            Scanner(string: str).scanHexInt32(&c)
            return UIColor(r: c, g: c, b: c)
        }
        if str.count >= 6 {
            ///索引
            let index = str.index(str.endIndex, offsetBy: -6)
            let subString = str[index...]
            if str.hasPrefix("0X") { str = String(subString) }
            if str.hasPrefix("#") { str = String(subString) }
            
            var range: NSRange = NSMakeRange(0, 2)
            let rString = (str as NSString).substring(with: range)
            range.location = 2
            let gString = (str as NSString).substring(with: range)
            range.location = 4
            let bString = (str as NSString).substring(with: range)
            
            var r: UInt32 = 0x0
            var g: UInt32 = 0x0
            var b: UInt32 = 0x0
            
            Scanner(string: rString).scanHexInt32(&r)
            Scanner(string: gString).scanHexInt32(&g)
            Scanner(string: bString).scanHexInt32(&b)
            
            return UIColor(r: r, g: g, b: b)
        }
        return .white
    }
}
