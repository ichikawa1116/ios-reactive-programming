//
//  ImageTranslater.swift
//  ios-rxswift-operators
//
//  Created by Manami Ichikawa on 2018/08/26.
//  Copyright © 2018 Manami Ichikawa. All rights reserved.
//

import Foundation
import RxSwift

class ImageTranslater {
    
    static func translate(imageEntity: ImageEntity) -> Observable<ImageModel> {
        let model = ImageModel(entity: imageEntity)
        let m = Observable.just(model)
        return m
    }
}
