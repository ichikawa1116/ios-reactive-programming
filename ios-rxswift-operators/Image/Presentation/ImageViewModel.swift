//
//  ImageViewModel.swift
//  ios-rxswift-operators
//
//  Created by Manami Ichikawa on 2018/08/26.
//  Copyright © 2018 Manami Ichikawa. All rights reserved.
//

import Foundation
import RxSwift

class ImageViewModel {
    
    let model: Observable<ImageModel>
    let indicatorTracker: PublishSubject<Bool>
    let usecase = ImageUsecaseImpl()
    
    init(trigger: Observable<Void>) {
        
        let save = trigger
            .map { $0 in
                self?.usecase.loadData()
        }
        
    }
    
}
