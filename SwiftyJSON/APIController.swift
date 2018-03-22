//
//  APIController.swift
//  SwiftyJSON
//
//  Created by Appinventiv on 21/03/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import Foundation

class APIController{
    
    //parameters not in use because Google Places API is being used
    func signUp(param:[String:Any],user:@escaping (JSONModel)->()){
        let headers = [
            "Authorization": "Basic ZXBpY2dlbTpBMG9pOFVubWhZSEhqdTk2OE1MaQ==",
            "Cache-Control": "no-cache",
            "Postman-Token": "d9dee99d-17df-4f8e-8ca2-a0162187d363"
        ]
        let baseUrl = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=-33.8670,151.1957&radius=500&types=food&name=cruise&key=AIzaSyBUxnBqrbfm3lOhup_mNUpwMqm7PTNfiZ8"
        NetworkController().GetSwiftyJSON(url: baseUrl, parameters: param, headers: headers) { (json) in
            user(JSONModel(json: json))
        }
        }
    }
    
 
