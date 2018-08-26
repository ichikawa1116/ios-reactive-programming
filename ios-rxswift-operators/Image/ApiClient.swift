//
//  ApiClient.swift
//  ios-rxswift-operators
//
//  Created by Manami Ichikawa on 2018/08/26.
//  Copyright © 2018 Manami Ichikawa. All rights reserved.
//

import Foundation
import RxSwift

class ApiClient {
    
    func apiResponse() -> Observable<ImageEntity> {
        
        let entity = ImageEntity()
        let e = Observable.just(entity)
        
        return e
    }
}
