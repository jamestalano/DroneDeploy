//
//  LoginLoginInteractor.swift
//  DroneDeployViper
//
//  Created by James Talano on 6/7/21.
//  Copyright © 2021 James. All rights reserved.
//

import Foundation


class LoginInteractor: LoginInteractorInput {
    
    weak var output: LoginInteractorOutput!
    func performLoginAPICall(username: String, pass: String) {
        self.output.loginDidComplete()
    }
}
