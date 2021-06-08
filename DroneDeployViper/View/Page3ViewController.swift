//
//  Page3ViewController.swift
//  DroneDeployViper
//
//  Created by James Talano on 6/7/21.
//  Copyright © 2021 James. All rights reserved.
//

import UIKit

class Page3ViewController: UIViewController {

    var output: Page3Output!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    @IBAction func onLogout(_ sender: Any) {
        self.output.LogOut()
    }
    
    @IBAction func onBack(_ sender: Any) {
        self.output.onBack()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
