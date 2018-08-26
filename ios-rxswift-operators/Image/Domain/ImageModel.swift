//
//  ImageModel.swift
//  ios-rxswift-operators
//
//  Created by Manami Ichikawa on 2018/08/26.
//  Copyright © 2018 Manami Ichikawa. All rights reserved.
//

import Foundation
import UIKit

class ImageModel {
    
    var id: String  = ""
    var url: String = ""
    var imageCode: String = ""
    //var image: UIImage?
    
    init(entity: ImageEntity) {
        self.id = entity.id
        self.url = entity.url
        self.imageCode = entity.imageCode
    }
}
