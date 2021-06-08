//
//  Page3Presenter.swift
//  DroneDeployViper
//
//  Created by James Talano on 6/7/21.
//  Copyright © 2021 James. All rights reserved.
//

import UIKit

class Page3Presenter: Page3Output, Page3InteractorOutput {
    
    weak var view: Page3ViewController!
    var interactor: Page3InteractorInput!
    var router: LoginRouterInput!

    func isValidLoginForm(username:String?, pass:String?) -> Bool {
        return true
    }
 
    func LogOut() {
        self.interactor.logOut()
    }
    
    func onBack() {
        self.interactor.popPage()
    }
    
    // MARK: Page3InteractorOutput
    
    func LogOutCompleted() {
        if let from = self.view {
            self.router.logOut(fromVC: from)
        }    }
    
    func PopCompleted() {
        if let from = self.view {
            self.router.popupViewController(fromVC: from)
        }
    }

}
