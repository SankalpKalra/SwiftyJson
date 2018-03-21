//
//  ViewController.swift
//  SwiftyJSON
//
//  Created by Appinventiv on 21/03/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.GetData()
        
    }
    let parameters = [            // parameters not used in this project
        "Username":"Sankalp",
        "Password":"********"
    ]
    func GetData(){
        APIController().signUp(param: parameters) { (user) in
            print(user.results[0].name)
            print(user.status)
        }
    }
}

