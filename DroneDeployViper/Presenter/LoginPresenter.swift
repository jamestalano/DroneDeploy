//
//  LoginLoginPresenter.swift
//  DroneDeployViper
//
//  Created by James Talano on 6/7/21.
//  Copyright © 2021 James. All rights reserved.
//

import UIKit

class LoginPresenter: LoginViewOutput, LoginInteractorOutput {

    weak var view: LoginViewInput!
    var interactor: LoginInteractorInput!
    var router: LoginRouterInput!

    func isValidLoginForm(username:String?, pass:String?) -> Bool {
        return true
    }
    
    func performLogin(username:String, pass:String)  {
        self.interactor.performLoginAPICall(username: username, pass: pass)
    }
    
    
    // MARK: LoginInteractorOutput
    func loginDidComplete() {
        
        if let from = self.view as? UIViewController {
            self.router.showNextViewController(fromVC: from, identifier: "Page2ViewController")
        }
    }

}
