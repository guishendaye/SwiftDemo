//
//  LoginVC.swift
//  SwiftProject
//
//  Created by 欧嘉明 on 2022/1/15.
//

import UIKit
import RxSwift

class LoginVC: BaseViewController {
    
//    private let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func setUpSubViews() {
        let loginView = LoginView.instantiateFromNib(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: SCREEN_HEIGHT))
        self.view.addSubview(loginView)
        loginView.sureBtn.rx.tap
            .subscribe(onNext: {
                APPDELEGATE.configMainWindow()
                print("button Tapped")
            })
            .disposed(by: self.rx.disposeBag)
        
        //        loginView.bgImageView.kf_setImage(urlStr: "https://lupic.cdn.bcebos.com/20210629/2000452430_14.jpg")

//        loginView.accountTF.rx.text.orEmpty.changed
//            .subscribe(onNext:{(text) in print("文本变化:\(text)")})
//            .disposed(by: self.rx.disposeBag)
        
    }
}
