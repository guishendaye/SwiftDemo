//
//  FirstViewTwoPart.swift
//  SwiftProject
//
//  Created by 欧嘉明 on 2022/5/12.
//

import UIKit

class FirstViewTwoPart: UIView {
    class func instantiateFromNib(frame: CGRect) -> FirstViewTwoPart {
        guard let firstViewTwoPart = Bundle.main.loadNibNamed("FirstViewTwoPart", owner: nil, options: nil)?.first as? FirstViewTwoPart else {return FirstViewTwoPart()}
        firstViewTwoPart.frame = frame;
        firstViewTwoPart.setUpSubView()
        return firstViewTwoPart
    }
    
    func setUpSubView(){

    }

}
