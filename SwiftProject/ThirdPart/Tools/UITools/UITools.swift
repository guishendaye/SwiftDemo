//
//  UITools.swift
//  SwiftProject
//
//  Created by 欧嘉明 on 2022/2/15.
//

import UIKit

//MARK: 字体大小
func kFontSize(_ a: CGFloat) -> UIFont {
    return UIFont.systemFont(ofSize: a)
}

func kFontBoldSize(_ a: CGFloat) -> UIFont {
    return UIFont.boldSystemFont(ofSize: a)
}

//MARK: 设置UITextField的leftView
func leftViewDefault(_ leftView:UIView,_ tf:UITextField){
    tf.leftView = leftView
    tf.leftViewMode = .always
}
