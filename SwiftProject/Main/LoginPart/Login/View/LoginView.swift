//
//  LoginView.swift
//  SwiftProject
//
//  Created by 欧嘉明 on 2022/2/15.
//

import UIKit

class LoginView: UIView {
    
    @IBOutlet weak var bgImageView: UIImageView!
    
    @IBOutlet weak var accountTF: UITextField!
    
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet weak var sureBtn: UIButton!
    
//    var loginView:LoginView!
    
    class func instantiateFromNib(frame: CGRect) -> LoginView {
        
        guard let loginView = Bundle.main.loadNibNamed("LoginView", owner: nil, options: nil)?.first as? LoginView else {return LoginView()}
        loginView.frame = frame;
        loginView.backgroundColor = UIColor.hex("FFFFFF")
        leftViewDefault(UIView.init(frame: CGRect(x: 0, y: 0, width: 15, height: 15)), loginView.accountTF)
        leftViewDefault(UIView.init(frame: CGRect(x: 0, y: 0, width: 15, height: 15)), loginView.passwordTF)
        return loginView
    }
    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        setUpSubView()
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
}

extension LoginView {
    func setUpSubView(){

    }
}
