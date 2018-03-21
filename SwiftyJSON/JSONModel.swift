//
//  JSONModel.swift
//  SwiftyJSON
//
//  Created by Appinventiv on 21/03/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import Foundation
struct JSONModel{
    var results:[Results]
    var status:String
    init (json:JSON){
        let resultArr = json["results"].arrayValue
        self.results = resultArr.map({
            Results($0)
        })
        status = json["status"].stringValue
    }
}

struct Results{
    var name:String
    var id:String
    var vicinity:String
    
    init(_ json:JSON){
        name = json["name"].stringValue
        id = json["id"].stringValue
        vicinity = json["vicinity"].stringValue
    }
}
// var geometry:Geometry
//}

//struct Geometry {
//    var loction:Location
//    var viewport:Viewport
//}
//
//struct Location{
//    var lat:Float?
//    var lng:Float?
//}
//
//struct Viewport{
//    var northeast:Location
//    var southwest:Location
//}

