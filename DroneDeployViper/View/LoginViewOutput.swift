//
//  LoginLoginViewOutput.swift
//  DroneDeployViper
//
//  Created by James Talano on 6/7/21.
//  Copyright © 2021 James. All rights reserved.
//

protocol LoginViewOutput {
    
    func performLogin(username:String, pass:String)
    func isValidLoginForm(username:String?, pass:String?) -> Bool
}
