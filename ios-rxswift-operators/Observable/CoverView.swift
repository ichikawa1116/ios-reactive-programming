//
//  CoverView.swift
//  ios-rxswift-operators
//
//  Created by Manami Ichikawa on 2018/08/25.
//  Copyright © 2018 Manami Ichikawa. All rights reserved.
//

import UIKit

class CoverView: UIView {
    
    //コードから生成したときに通る初期化処理
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    
    //InterfaceBulderで配置した場合に通る初期化処理
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commonInit()
    }
    
    fileprivate func commonInit() {
        //MyCustomView.xibファイルからViewを生成する。
        //File's OwnerはCoverViewなのでselfとする。
        
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "CoverView", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        addSubview(view)
        
        //ここでちゃんとあわせておかないと、配置したUIButtonがタッチイベントを拾えなかったりする。
        view.frame = self.bounds
        
        //伸縮するように
        view.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
        //addする。viewオブジェクトの2枚重ねになる。
        self.addSubview(view)
        
        
    }
    

}
