//
//  TypeCell.swift
//  SwiftProject
//
//  Created by 欧嘉明 on 2022/5/27.
//

import UIKit

class TypeCell: UICollectionViewCell {

    @IBOutlet weak var titleLab: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var bgView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func refleshData(title:String) -> Void {
        self.titleLab.text = title
        if title == "饮食"{
            self.bgView.backgroundColor = UIColor.hex("FFF5E1")
            self.titleLab.textColor = UIColor.hex("FF630E")
            self.imageView.image = UIImage.init(named: "icon_food")
        }else if title == "运动"{
            self.bgView.backgroundColor = UIColor.hex("E5EEFF")
            self.titleLab.textColor = UIColor.hex("315DFE")
            self.imageView.image = UIImage.init(named: "icon_sport")
        }else if title == "用药"{
            self.bgView.backgroundColor = UIColor.hex("DAFCF5")
            self.titleLab.textColor = UIColor.hex("1BE9BF")
            self.imageView.image = UIImage.init(named: "icon_pills")
        }else if title == "胰岛素"{
            self.bgView.backgroundColor = UIColor.hex("E1F8FC")
            self.titleLab.textColor = UIColor.hex("05B8D4")
            self.imageView.image = UIImage.init(named: "icon_Insulin")
        }else if title == "指血"{
            self.bgView.backgroundColor = UIColor.hex("FFE7E7")
            self.titleLab.textColor = UIColor.hex("FD5F5F")
            self.imageView.image = UIImage.init(named: "icon_finger_blood")
        }else if title == "睡眠"{
            self.bgView.backgroundColor = UIColor.hex("EFE8FE")
            self.titleLab.textColor = UIColor.hex("D446D9")
            self.imageView.image = UIImage.init(named: "icon_sleep")
        }else if title == "身体状态"{
            self.bgView.backgroundColor = UIColor.hex("FFEFDD")
            self.titleLab.textColor = UIColor.hex("FFEFDD")
            self.imageView.image = UIImage.init(named: "icon_body")
        }
    }
}
