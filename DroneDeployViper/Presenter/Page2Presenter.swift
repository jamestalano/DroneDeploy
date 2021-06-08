//
//  Page2Presenter.swift
//  DroneDeployViper
//
//  Created by James Talano on 6/7/21.
//  Copyright © 2021 James. All rights reserved.
//

import UIKit

class Page2Presenter: Page2Output, Page2InteractorOutput {

    weak var view: Page2ViewController!
    var interactor: Page2InteractorInput!
    var router: LoginRouterInput!

    func isValidLoginForm(username:String?, pass:String?) -> Bool {
        return true
    }
    
    func processNext() {
        self.interactor.goToNextPage()
    }
    
    func LogOut() {
        self.interactor.logOut()
    }
    
    // MARK: Page2InteractorOutput

    func ProcessCompleted() {
        if let from = self.view {
            self.router.showNextViewController(fromVC: from, identifier: "Page3ViewController")
        }
    }
    
    func LogOutCompleted() {
        if let from = self.view {
            
            self.router.logOut(fromVC: from)
        }
    }

}
