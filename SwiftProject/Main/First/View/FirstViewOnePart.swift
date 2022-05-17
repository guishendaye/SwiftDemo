//
//  FirstViewOnePart.swift
//  SwiftProject
//
//  Created by 欧嘉明 on 2022/5/12.
//

import UIKit

class FirstViewOnePart: UIView {
    ///蓝牙名
    @IBOutlet weak var blueNameLab: UILabel!
    ///时间
    @IBOutlet weak var timeLeftLab: UILabel!
    ///长条提示btn
    @IBOutlet weak var warnNumBtn: UIButton!
    ///提示lab
    @IBOutlet weak var warnNumLab: UILabel!
    ///长条分享btn
    @IBOutlet weak var shareWarnBtn: UIButton!
    
    class func instantiateFromNib(frame: CGRect) -> FirstViewOnePart {
        guard let firstViewOnePart = Bundle.main.loadNibNamed("FirstViewOnePart", owner: nil, options: nil)?.first as? FirstViewOnePart else {return FirstViewOnePart()}
        firstViewOnePart.frame = frame;
        firstViewOnePart.setUpSubView()
        return firstViewOnePart
    }
    
    func setUpSubView(){

    }
}
