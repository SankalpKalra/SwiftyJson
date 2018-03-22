//
//  NetworkController.swift
//  SwiftyJSON
//
//  Created by Appinventiv on 21/03/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import Foundation
class NetworkController{
    
    func GetSwiftyJSON(url:String,parameters:[String:Any],headers:[String:String], success:@escaping (JSON)->Void){
        
        if let urlString = URL(string: url){
            if let data = try? String(contentsOf: urlString){
                let json = JSON(parseJSON: data)
                success(json)
//                let result = json["results"].arrayValue
//                let status = json["status"].stringValue
//                let html = json["html_attributions"].stringValue

                
//                JSONModel(html_attributions: html, results:result, status: status)
//                for i in result{
//                    let names = i["name"].stringValue
//                    print(names)
//                }
//                let lat =  json["results"][0]["geometry"]["viewport"]["northeast"]["lat"]
//                print("STATUS:",status)
//                print("LAT:",lat)
//                 print("HTML:",html)
            }
        }
        
    }
    
}
