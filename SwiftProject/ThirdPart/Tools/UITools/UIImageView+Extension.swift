//
//  LoginView.swift
//  SwiftProject
//
//  Created by 欧嘉明 on 2022/2/15.
//

import UIKit
import Kingfisher

extension UIImageView {

    /// UIImageView的便利构造器，可以通过图片名直接创建一个UIImageView
    ///
    /// - Parameter imageName: 图片名
    convenience init(imageName: String) {
        self.init()
        
        let image = UIImage(named: imageName)
        self.image = image
    }
}

extension UIImageView {
    /// 设置网络图片placeHolderImage
    ///
    /// - Parameters:
    ///   - urlStr: 图片的url的字符串
    func kf_setImage(urlStr:String?){
        let url = URL(string: urlStr!)
        self.kf.setImage(with: url, placeholder: nil, options: nil, progressBlock: nil, completionHandler: nil)
    }
    /// 设置网络图片placeHolderImage
    ///
    /// - Parameters:
    ///   - urlStr: 图片的url的字符串
    ///   - placeHolderImage: 占位图片的名字
    func kf_setImageAndPlaceHolderImage(urlStr: String?, placeHolderImage: String?) {
        let plImage = UIImage(named: placeHolderImage!)
        let url = URL(string: urlStr!)
        self.kf.setImage(with: url, placeholder: plImage, options: nil, progressBlock: nil, completionHandler: nil)
        
//        guard let urlStr = urlStr, let placeHolder = placeHolderImage else {
//            return
//        }
        
//        //1. url和placeholder都没有值
//        if urlStr == nil && placeHolderImage == nil {return}
//        
//        //2. url有值，placeHolder没值, sd_setImage
//        if urlStr != nil && placeHolderImage == nil {
//            let url = URL(string: urlStr!)
//            sd_setImage(with: url)
//            return
//        }
//        
//        //3 url和placeHolder都有值，sd_setImage:placeHolder
//        if urlStr != nil && placeHolderImage != nil {
//            let plImage = UIImage(named: placeHolderImage!)
//            let url = URL(string: urlStr!)
//            sd_setImage(with: url, placeholderImage: plImage)
//        }
        
    }
}
