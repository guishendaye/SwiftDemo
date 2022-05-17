//
//  FirstVC.swift
//  SwiftProject
//
//  Created by 欧嘉明 on 2022/1/15.
//

import UIKit

class FirstVC: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.tag = 10086
        self.closeSilder = true
//        view.backgroundColor = .randomColor()
        
//        let tempLab = UILabel.init(text: "12345", textColor: .black, fontSize: 17, alignment: .center, numOfLines: 1)
//        tempLab.frame = CGRect(x: 100, y: 200, width: 100, height: 100)
//        tempLab.backgroundColor = UIColor.yellow
//        view.addSubview(tempLab)
//        print(tempLab.x(),tempLab.centerX(),tempLab.centerY(),tempLab.width())
        
        let firstView = FirstView.init(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: SCREEN_HEIGHT))
        self.view.addSubview(firstView)
    }
}
