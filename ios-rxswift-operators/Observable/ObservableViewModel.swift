//
//  ViewModel.swift
//  ios-rxswift-operators
//
//  Created by Manami Ichikawa on 2018/08/25.
//  Copyright © 2018 Manami Ichikawa. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa


class ObservableViewModel {
    
    let changeImageStream: Observable<Void>
    let faseInDuration: Observable<String>
    let disposeBag = DisposeBag()
    
    init(input: (buttonTapTrigger: Observable<Void>, changeslideValue: Observable<Float>)){
        
        faseInDuration = input.changeslideValue.map{ aaa in String(aaa) }
        changeImageStream = input.buttonTapTrigger
        // 変更があったというイベントだけが必要で、value<String>を使用しないため、
        // Observable<Void>型に変換するとき
        //let sliderTrigger = input.changeslideValue.map{_ in() }
        
        
    }
    
    
}
