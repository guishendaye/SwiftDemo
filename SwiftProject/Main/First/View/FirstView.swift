//
//  FirstView.swift
//  SwiftProject
//
//  Created by 欧嘉明 on 2022/5/12.
//

import UIKit

class FirstView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpSubView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension FirstView {
    func setUpSubView(){
        self.backgroundColor = .clear
        let firstViewOnePart = FirstViewOnePart.instantiateFromNib(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: STATUS_BAR_HEIGHT + 120))
        self.addSubview(firstViewOnePart)
        
        let firstViewTwoPart = FirstViewTwoPart.instantiateFromNib(frame: CGRect(x: 0, y: firstViewOnePart.bottom() - 38, width: SCREEN_WIDTH, height: SCREEN_HEIGHT - firstViewOnePart.bottom() - TABBAR_HEIGHT))
        self.addSubview(firstViewTwoPart)
    }
}
