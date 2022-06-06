//
//  BaseViewController.swift
//  sss
//
//  Created by hrrMac on 2019/11/19.
//  Copyright © 2019 hrrMac. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    var closeSilder : Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        edgesForExtendedLayout = []
        self.view.backgroundColor = UIColor.hex("F3F3F3")
        self.setUpSubViews()
    }
    
    //MARK: view
    func setUpSubViews(){}
    
    // MARK: - 析构函数
    deinit{
        print("\(#function): \(self.description)")
    }
}


