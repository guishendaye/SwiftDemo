//
//  UIImage+extension.swift
//  WeiboTen
//
//  Created by ItHeiMa on 2017/7/10.
//  Copyright © 2017年 itHeima. All rights reserved.
//

import UIKit

extension UIImage {
    //MARK: 类方法快速构造image
    class func creteImageWithLocaName(imageName:String) ->UIImage?{
        let image = UIImage(named: imageName)
        return image
    }
    
    /// 创建圆形的图片
    ///
    /// - Parameters:
    ///   - color: 绘制时的背景颜色
    ///   - size: 绘制的区域的大小
    /// - Returns: 圆形的图片
    func createCircleImage(color: UIColor, size: CGSize, callBack:@escaping (UIImage?)->()){
        //异步绘制圆角头像
        DispatchQueue.global().async {
            //1. 开启图形上下文
            UIGraphicsBeginImageContext(size)
            //2. 设置背景颜色
            color.setFill()
            //3. 颜色的填充
            UIRectFill(CGRect(origin: CGPoint.zero, size: size))
            //4. 圆形裁切
            //用贝塞尔曲线生成一个圆形的路径
            let path = UIBezierPath(ovalIn: CGRect(origin: CGPoint.zero, size: size))
            //路径和裁切
            path.addClip()
            //5. 绘制图像
            self.draw(in: CGRect(origin: CGPoint.zero, size: size))
            //6. 从上下文获取图片
            let image = UIGraphicsGetImageFromCurrentImageContext()
            //7. 关闭图形上下文
            UIGraphicsEndImageContext()
            
            //在主线程回调，将图片传出
            DispatchQueue.main.async {
                callBack(image)
            }
        }
    }
    
    func compressImage(color: UIColor = UIColor.white, size: CGSize) -> UIImage? {
        //1. 开启图形上下文
        UIGraphicsBeginImageContext(size)
        //2. 设置背景颜色
        color.setFill()
        //3. 颜色的填充
        UIRectFill(CGRect(origin: CGPoint.zero, size: size))
        //5. 绘制图像
        self.draw(in: CGRect(origin: CGPoint.zero, size: size))
        //6. 从上下文获取图片
        let image = UIGraphicsGetImageFromCurrentImageContext()
        //7. 关闭图形上下文
        UIGraphicsEndImageContext()
        
        return image
    }
}
