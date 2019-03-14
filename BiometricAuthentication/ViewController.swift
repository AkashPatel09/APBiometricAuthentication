//
//  ViewController.swift
//  BiometricAuthentication
//
//  Created by mtpl009 on 14/03/19.
//  Copyright © 2019 AkashPatel. All rights reserved.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func beginBiometricAuthentication(_ sender : UIButton) {
        
        APBiometricAuthentication.shared.beginBiometricAuthentication { (authenticationSuccessful, errorMessage) in
            if authenticationSuccessful {
                print("Success")
            }
            else {
                print(errorMessage ?? "Error occurred while authentication")
            }
        }
    }
}

