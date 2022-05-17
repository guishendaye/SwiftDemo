//
//  MainTabBarVC.swift
//  SwiftProject
//
//  Created by 欧嘉明 on 2022/1/18.
//

import UIKit
import RAMAnimatedTabBarController

class MainTabBarVC: RAMAnimatedTabBarController ,UITabBarControllerDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        commitInView()
        addAllChildVC();
        self.delegate = self
    }

    func addAllChildVC(){
        addOneChild(childVC: FirstVC(), title: "实时监测", imageNormal: "tabbar_icon_home_default", imageSelect: "tabbar_icon_home_pressed")
        addOneChild(childVC: SecondVC(), title: "每日血糖", imageNormal: "tabbar_icon_xuetang_default", imageSelect: "tabbar_icon_xuetang_pressed")
    }
    
    func addOneChild(childVC:BaseViewController,title:String?,imageNormal:String?,imageSelect:String?) {
        
        let navVC = BaseNavigationViewController(rootViewController: childVC)
        
        //MARK: selectedImage不设置withRenderingMode会不显示？？？？
        let item = RAMAnimatedTabBarItem(title: title, image: UIImage.creteImageWithLocaName(imageName: imageNormal ?? ""), selectedImage: UIImage(named: imageSelect ?? "")?.withRenderingMode(.alwaysOriginal))

        // 修改标签栏未选中时文字颜色
        item.setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.gray], for: .normal)
        // 修改标签栏选中时文字颜色
        item.setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.hex("00D5B8")], for: .selected)
        
        //  你这个选择这其中的一个RAMFumeAnimation, RAMBounceAnimation, RAMRotationAnimation, RAMFrameItemAnimation, RAMTransitionAnimation
        // 你也可以为你的每一个item加载不同的动画，可以根据自己需求添加
        let animation = RAMBounceAnimation()
        item.animation = animation
        addChild(navVC)
        navVC.tabBarItem = item
    }
}

extension MainTabBarVC{
    func commitInView() {
        view.backgroundColor = .white
        tabBar.isTranslucent = false
        tabBar.tintColor = .clear
        tabBar.barTintColor = .white
    }
}
