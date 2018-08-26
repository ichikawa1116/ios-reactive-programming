//
//  ImageEntity.swift
//  ios-rxswift-operators
//
//  Created by Manami Ichikawa on 2018/08/26.
//  Copyright © 2018 Manami Ichikawa. All rights reserved.
//

import Foundation
import SwiftyJSON

struct ImageEntity {
    var id: String        = ""
    var url: String       = ""
    var imageCode: String = ""
    
    init(){
        
        let string = "[{\"id\": \"12345\",\"url1\": \"https://pds.exblog.jp/pds/1/201109/08/35/e0224135_1747389.jpg\",\"imageCode\": \"01\"}]"
        
        let data = string.data(using: .utf8)
        let jsonData = try! JSON(data: data!)
        let array = jsonData[0]
        
        self.id = array["id"].string!
        self.url = array["url1"].string!
        self.imageCode = array["imageCode"].string!
        
    }
}
