//
//  UILabel+extension.swift
//  03电话本
//
//  Created by ItHeiMa on 2017/7/4.
//  Copyright © 2017年 itHeima. All rights reserved.
//
/*
在写偏利构造器时，至少保留一个参数，不要设默认值， 不然会和 init() 冲突;如果函数的参数是一个可选值，代表该参数可能传nil
 */

import UIKit

extension UILabel {
    /// UILable的便利构造器
    ///
    /// - Parameters:
    ///   - text: text
    ///   - textColor: 文本的颜色
    ///   - fontSize: 文字的大小
    ///   - alignment: 对齐方式
    ///   - numOfLines: 行数
    convenience init(text: String?,
                     textColor: UIColor = UIColor.darkGray,
                     fontSize: CGFloat = 14,
                     alignment: NSTextAlignment = .left,
                     numOfLines: Int = 0) {
        self.init()
        
        self.text = text
        self.textColor = textColor
        self.textAlignment = alignment
        self.numberOfLines = numOfLines
        self.font = UIFont.systemFont(ofSize: fontSize)
    }
}
