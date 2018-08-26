//
//  DataStore.swift
//  ios-rxswift-operators
//
//  Created by Manami Ichikawa on 2018/08/26.
//  Copyright © 2018 Manami Ichikawa. All rights reserved.
//

import Foundation
import RxSwift

class ImageDataStore {
    
    fileprivate let api = ApiClient()
    
    func fetch() -> Observable<ImageEntity> {
        return api.apiResponse()
    }
    
}
