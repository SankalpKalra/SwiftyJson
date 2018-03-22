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
    var geometry:Geometry
    init(_ json:JSON){
        name = json["name"].stringValue
        id = json["id"].stringValue
        vicinity = json["vicinity"].stringValue
        let geo = json["geometry"].dictionary ?? [:]
        geometry = Geometry.init(json: geo)
    }
}


struct Geometry {
    var location:Location
    var viewport:Viewport
    init(json:[String:JSON]){
        let loc = json["location"]?.dictionary ?? [:]
        location = Location.init(json: loc)
        let vp = json["viewport"]?.dictionary ?? [:]
        viewport = Viewport.init(json: vp)
        
    }
    
}

struct Location{
    var lat:Double
    var lng:Double
        init(json:[String:JSON]){
            lat = (json["lat"]?.double)!
            lng = (json["lng"]?.double)!
    }
}

struct Viewport{
    var northeast:Location
    var southwest:Location
    init(json:[String:JSON]){
        let ne = json["northeast"]?.dictionary ?? [:]
        northeast = Location.init(json: ne)
        let sw = json["southwest"]?.dictionary ?? [:]
        southwest = Location.init(json: sw)
        
    }
}

