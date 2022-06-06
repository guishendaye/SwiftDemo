//
//  FirstViewTwoPart.swift
//  SwiftProject
//
//  Created by 欧嘉明 on 2022/5/12.
//

import UIKit

class FirstViewTwoPart: UIView ,UICollectionViewDelegate,UICollectionViewDataSource{
    //MARK: 时间CollectionView
    @IBOutlet weak var timeCollectionView: UICollectionView!
    @IBOutlet weak var timeCollectionViewFlow: UICollectionViewFlowLayout!
    var timeMarr:NSMutableArray = []
    var typeArr:NSArray = ["饮食","运动","用药","胰岛素","指血","睡眠","身体状态"]
    //MARK: 打卡类型CollectionView
    @IBOutlet weak var typeCollectionView: UICollectionView!
    @IBOutlet weak var typeCollectionViewFlow: UICollectionViewFlowLayout!
    
    class func instantiateFromNib(frame: CGRect) -> FirstViewTwoPart {
        guard let firstViewTwoPart = Bundle.main.loadNibNamed("FirstViewTwoPart", owner: nil, options: nil)?.first as? FirstViewTwoPart else {return FirstViewTwoPart()}
        firstViewTwoPart.frame = frame;
        firstViewTwoPart.setUpSubView()
        firstViewTwoPart.setUpData()
        return firstViewTwoPart
    }
    
    //MARK: setUpSubView
    func setUpSubView(){
        self.timeCollectionView.delegate = self;
        self.timeCollectionView.dataSource = self;
        self.timeCollectionView.register(UINib.init(nibName: "TiemCell", bundle: nil), forCellWithReuseIdentifier: "TiemCell")
        self.timeCollectionViewFlow.itemSize = CGSize(width: (SCREEN_WIDTH - 90) / 4, height: 24)

        self.typeCollectionView.delegate = self;
        self.typeCollectionView.dataSource = self;
        self.typeCollectionViewFlow.itemSize = CGSize(width: (SCREEN_WIDTH - 78) / 4, height: 44)
        self.typeCollectionView.register(UINib.init(nibName: "TypeCell", bundle: nil), forCellWithReuseIdentifier: "TypeCell")
    }
    
    func setUpData(){
        self.timeMarr = NSMutableArray.init()
        for time in ["3小时","6小时","12小时","24小时"] {
            let timeModel = TimeModel.init()
            timeModel.title = time
            self.timeMarr.add(timeModel)
        }
        var firstTiemModel = self.timeMarr.firstObject as! TimeModel
        firstTiemModel.selectBool = true
    }
    
    //MARK:Delegate
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView.tag == 100 {
            return 4;
        }else{
            return 7;
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView.tag == 100 {
            let timeCell = collectionView.dequeueReusableCell(withReuseIdentifier: "TiemCell", for: indexPath) as! TiemCell
            timeCell.refleshData(model: self.timeMarr[indexPath.item] as! TimeModel)
            return timeCell;
        }else{
            let typeCell = collectionView.dequeueReusableCell(withReuseIdentifier: "TypeCell", for: indexPath) as! TypeCell
            typeCell.refleshData(title: self.typeArr[indexPath.item] as! String)
            return typeCell;
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView.tag == 100 {
            let timeModel = self.timeMarr[indexPath.item] as! TimeModel
            if timeModel.selectBool! {
                return
            }
            for model in self.timeMarr {
                let tempModel = model as! TimeModel
                tempModel.selectBool = false
            }
            timeModel.selectBool = true
            collectionView.reloadData()
        }else if collectionView.tag == 200 {
            GJLog(message: indexPath.item)
        }
    }
}
