//
//  UIViewControllerExtension.swift
//  sss
//
//  Created by HOrange on 2020/2/19.
//  Copyright © 2020 hrrMac. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController{
    
    /// 添加文字右侧按钮
    func navBtnWithText(text: String,
                        font: CGFloat = 15,
                        color: UIColor = .black,
                        edgn: UIEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                        isRight: Bool = true) -> UIButton{
        let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 64, height: 44))
        btn.setTitle(text, for: UIControl.State.normal)
        btn.setTitleColor(color, for: UIControl.State.normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: font)
        btn.titleEdgeInsets = edgn
        btn.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.right
        if isRight {
            navigationItem.rightBarButtonItem = UIBarButtonItem(customView: btn)
            btn.addTarget(self, action: #selector(topMoreClick), for: UIControl.Event.touchUpInside)
        }else{
            navigationItem.leftBarButtonItem = UIBarButtonItem(customView: btn)
            btn.addTarget(self, action: #selector(goBack), for: UIControl.Event.touchUpInside)
        }
       
        return btn
    }
    
    /// 添加文字图片按钮
    func rightNavBtnWithImgView(img: String,
                                edgn: UIEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),isRight: Bool) -> UIButton{
        let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 64, height: 44))
        btn.setImage(UIImage(named: img), for: UIControl.State.normal)
        btn.titleEdgeInsets = edgn
        btn.imageView?.contentMode = UIView.ContentMode.scaleAspectFit
        if isRight {
            btn.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.right
            navigationItem.rightBarButtonItem = UIBarButtonItem(customView: btn)
            btn .addTarget(self, action: #selector(topMoreClick), for: UIControl.Event.touchUpInside)
        }else{
            navigationItem.leftBarButtonItem = UIBarButtonItem(customView: btn)
            btn .addTarget(self, action: #selector(goBack), for: UIControl.Event.touchUpInside)
        }
        
        return btn
    }
    
    /// 添加两张图片按钮
    func rightNavBtnWithTwoImgView(leftImg: String,
                                   rightImg: String) -> (UIButton,UIButton){
        let btnView = UIView(frame: CGRect(x: 0, y: 0, width: 80, height: 44))
        
        let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 40, height: 44))
        btn.setImage(UIImage(named: leftImg), for: UIControl.State.normal)
        btn .addTarget(self, action: #selector(topMoreClick), for: UIControl.Event.touchUpInside)
        btnView.addSubview(btn)
        
        let btnRight = UIButton(frame: CGRect(x: 40, y: 0, width: 40, height: 44))
        btnRight.setImage(UIImage(named: rightImg), for: UIControl.State.normal)
        btnRight .addTarget(self, action: #selector(rightTopMoreClick), for: UIControl.Event.touchUpInside)
        btnView.addSubview(btnRight)
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: btnView)
        
        return (btn,btnRight)
    }
    
    func hiddenLeftNavBtn(){
        let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 64, height: 44))
        btn.isHidden = true
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: btn)
    }
    
    
    @objc func topMoreClick(){
        
    }
    
    @objc func rightTopMoreClick(){
        
    }
    
    @objc func goBack(){
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
}
