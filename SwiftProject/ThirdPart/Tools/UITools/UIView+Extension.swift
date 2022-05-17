//
//  UIView+extension.swift
//  SwiftProject
//
//  Created by 欧嘉明 on 2022/3/2.
//

import UIKit

//MARK: UIView xib 面板设置圆角和边框颜色
extension UIView{
    //MARK: 圆角
    @IBInspectable var cornerRadius: CGFloat{
        get{
            return layer.cornerRadius
        }
        set{
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    //MARK: 边框宽度
    @IBInspectable var borderWidth: CGFloat{
        get{
            return layer.borderWidth
        }
        set{
            layer.borderWidth = newValue > 0 ? newValue : 0
        }
    }
    
    //MARK: 边框颜色
    @IBInspectable var borderColor: UIColor{
        get{
            return UIColor(cgColor: layer.borderColor!)
        }
        set{
            layer.borderColor = newValue.cgColor
        }
        
    }
    
    //MARK:裁剪
    @IBInspectable var masksToBounds: Bool{
        get{
            return layer.masksToBounds
        }
        set{
            layer.masksToBounds = newValue
        }
    }
    
    //MARK: 阴影颜色
    @IBInspectable var shadowColor: UIColor{
        get{
            return UIColor(cgColor: layer.shadowColor!)
        }
        set{
            layer.shadowColor = newValue.cgColor
        }
    }
    
    //MARK: 模糊计算的半径
    @IBInspectable var shadowRadius: CGFloat{
        get{
            return layer.shadowRadius
        }
        set{
            layer.shadowRadius = newValue
        }
    }
    
    //MARK: 阴影偏移量
    @IBInspectable var shadowOffset: CGSize{
        get{
            return CGSize.init(width: 0.0, height: 0.0)
        }
        set{
            layer.shadowOffset = newValue
        }
    }
    
    //MARK: 阴影的不透明度
    @IBInspectable var shadowOpacity: Float{
        get{
            return layer.shadowOpacity
        }
        set{
            layer.shadowOpacity = newValue
        }
    }
    
    func width() -> CGFloat{
        return self.frame.size.width
    }
    
    func height() -> CGFloat{
        return self.frame.size.height
    }
    
    func x () -> CGFloat{
        return self.frame.origin.x
    }
    
    func y () -> CGFloat{
        return self.frame.origin.y
    }
    
    func centerX () -> CGFloat{
        return self.center.x
    }
    
    func centerY () -> CGFloat{
        return self.center.y
    }
    
    func top () -> CGFloat{
        return self.frame.origin.y
    }
    
    func bottom () -> CGFloat{
        return self.frame.size.height + self.frame.origin.y;
    }
    
    func left() -> CGFloat {
        return self.frame.origin.x;
    }
    
    func right() -> CGFloat {
        return self.frame.size.width + self.frame.origin.x;
    }
    
    func size() -> CGSize{
        return self.frame.size;
    }
    
    func point() -> CGPoint {
        return self.frame.origin;
    }
}
