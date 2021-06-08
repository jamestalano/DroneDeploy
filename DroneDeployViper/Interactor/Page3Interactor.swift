//
//  Page3Interactor.swift
//  DroneDeployViper
//
//  Created by James Talano on 6/7/21.
//  Copyright © 2021 James. All rights reserved.
//

import Foundation

class Page3Interactor: Page3InteractorInput {
    
    weak var output: Page3InteractorOutput!

    func popPage() {
        self.output.PopCompleted()
    }
    
    func logOut() {
        self.output.LogOutCompleted()
    }

}
