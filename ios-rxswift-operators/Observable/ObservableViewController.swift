//
//  CombineLatestViewController.swift
//  ios-rxswift-operators
//
//  Created by Manami Ichikawa on 2018/08/25.
//  Copyright © 2018 Manami Ichikawa. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ObservableViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var coverView: CoverView!
    
    var isClear: Bool = false
    var viewModel: ObservableViewModel?
    let disposeBag = DisposeBag()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slider.maximumValue = 1.0
        // tapButtonStreamはボタンタップの流れ
        let tapButtonStream = button.rx.tap.asObservable()
        let changeSliderStream = slider.rx.value.asObservable()
        
        
        viewModel = ObservableViewModel(input:(buttonTapTrigger: tapButtonStream, changeslideValue: changeSliderStream) )
        
        viewModel?.faseInDuration
            .subscribe(onNext: {[weak self] title in
                if let vc = self {
                    vc.label.text = title
                }
            })
            .disposed(by: disposeBag)
        
        viewModel?.changeImageStream
            .subscribe(onNext: {[weak self] _ in

                UIView.animate(withDuration: 0.3, delay: 0.0, options: [.curveEaseIn], animations: {
                    self?.coverView.alpha = (self?.isClear)! ? 1.0 : 0.0
                }, completion: nil)
                
                self?.isClear = !((self?.isClear)!)

            }).disposed(by: disposeBag)
    }

    
}
