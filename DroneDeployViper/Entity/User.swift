//
//  User.swift
//  DroneDeployViper
//
//  Created by James Talano on 6/7/21.
//  Copyright © 2021 James. All rights reserved.
//

import Foundation

class User: NSObject  {
    
    var username: String
    var password: String
    
    override init() {
        username = ""
        password = ""
    }
    
    init(username: String, password: String) {
        self.username = username
        self.password = password
    }
}


