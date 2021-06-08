//
//  LoginLoginRouterInput.swift
//  DroneDeployViper
//
//  Created by James Talano on 6/7/21.
//  Copyright © 2021 James. All rights reserved.
//

import UIKit

protocol LoginRouterInput {
    func showNextViewController(fromVC: UIViewController, identifier: String)
    func popupViewController(fromVC: UIViewController)
    func logOut(fromVC: UIViewController)
}
