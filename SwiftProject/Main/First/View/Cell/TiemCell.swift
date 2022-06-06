//
//  TiemCell.swift
//  SwiftProject
//
//  Created by 欧嘉明 on 2022/5/27.
//

import UIKit

class TiemCell: UICollectionViewCell {

    @IBOutlet weak var timeLab: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func refleshData(model:TimeModel) -> Void {
        self.timeLab.text = model.title
        self.timeLab.backgroundColor = model.selectBool ?? false ? UIColor.hex("00D5B8") : UIColor.hex("FFFFFF")
        self.timeLab.textColor = model.selectBool ?? false ? UIColor.hex("FFFFFF") : UIColor.hex("00D5B8")
    }
}
