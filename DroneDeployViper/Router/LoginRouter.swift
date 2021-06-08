//
//  LoginLoginRouter.swift
//  DroneDeployViper
//
//  Created by James Talano on 6/7/21.
//  Copyright © 2021 James. All rights reserved.
//

import UIKit

class LoginRouter: LoginRouterInput {
    
    func showNextViewController(fromVC: UIViewController, identifier: String) {
        if let nextVC = fromVC.storyboard?.instantiateViewController(withIdentifier: identifier) as? Page2ViewController {
            let presenter = Page2Presenter()
            presenter.view = nextVC
            presenter.router = self

            let interactor = Page2Interactor()
            interactor.output = presenter

            presenter.interactor = interactor
            nextVC.output = presenter
            fromVC.navigationController?.pushViewController(nextVC, animated: true)
                    }
        else if let nextVC = fromVC.storyboard?.instantiateViewController(withIdentifier: identifier) as? Page3ViewController {
            
            let presenter = Page3Presenter()
            presenter.view = nextVC
            presenter.router = self

            let interactor = Page3Interactor()
            interactor.output = presenter

            presenter.interactor = interactor
            nextVC.output = presenter
            
            fromVC.navigationController?.pushViewController(nextVC, animated: true)

        }
        
    }
    
    func logOut(fromVC: UIViewController) {
        if let navController = fromVC.navigationController {
            navController.popToRootViewController(animated: true)
        }
    }
    
    func popupViewController(fromVC: UIViewController) {
        if let navController = fromVC.navigationController {
            navController.popViewController(animated: true)
        }
    }
    
}
