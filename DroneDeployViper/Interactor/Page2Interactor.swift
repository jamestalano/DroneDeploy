//
//  Page2Interactor.swift
//  DroneDeployViper
//
//  Created by James Talano on 6/7/21.
//  Copyright © 2021 James. All rights reserved.
//

import Foundation

class Page2Interactor: Page2InteractorInput {
    
    weak var output: Page2InteractorOutput!
    
    func goToNextPage() {
        self.output.ProcessCompleted()
    }
    
    func logOut() {
        self.output.LogOutCompleted()

    }

}
