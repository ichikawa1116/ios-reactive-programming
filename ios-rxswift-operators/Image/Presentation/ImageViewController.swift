//
//  ImageViewController.swift
//  ios-rxswift-operators
//
//  Created by Manami Ichikawa on 2018/08/26.
//  Copyright © 2018 Manami Ichikawa. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ImageViewController: UIViewController {

    let disposeBag = DisposeBag()
    
    // ViewModelからの通信結果 -> インジケータを消す
    // 通知かきたら、Imageを切り替える
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let getDataTrigger = rx.sentMessage(#selector(viewWillAppear))
            .take(1)
            .map { _ in }
        
        

        
    }

}
