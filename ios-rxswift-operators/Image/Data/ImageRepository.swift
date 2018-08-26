//
//  ImageRepository.swift
//  ios-rxswift-operators
//
//  Created by Manami Ichikawa on 2018/08/26.
//  Copyright © 2018 Manami Ichikawa. All rights reserved.
//

import Foundation
import RxSwift

protocol ImageRepository {
    func loadData() -> Observable<ImageEntity>
}

class ImageRepositoryImpl: ImageRepository {
    
    let dataStore = ImageDataStore()
    
    func loadData() -> Observable<ImageEntity>{
        return dataStore.fetch()
    }
    
}
