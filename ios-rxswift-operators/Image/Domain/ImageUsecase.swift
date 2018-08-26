//
//  ImageUsecase.swift
//  ios-rxswift-operators
//
//  Created by Manami Ichikawa on 2018/08/26.
//  Copyright © 2018 Manami Ichikawa. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

protocol ImageUsecase : class {
    func loadData() -> Observable<ImageModel>
}

class ImageUsecaseImpl: ImageUsecase {
    
    let repository = ImageRepositoryImpl()
    
    func loadData() -> Observable<ImageModel> {
        return repository.loadData().flatMap{ImageTranslater.translate(imageEntity: $0)}
    }
   
    
}
