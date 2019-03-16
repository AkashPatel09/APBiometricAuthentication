//
//  APBiometricAuthentication.swift
//  BiometricAuthentication
//
//  Created by Akash Patel on 14/03/19.
//  Copyright © 2019 AkashPatel. All rights reserved.
//

import LocalAuthentication

//NOTE: Please add NSFaceIDUsageDescription key in your project's info.plist file in case to  authenticate user with their faceID

open class APBiometricAuthentication {
    
    open class func shared() -> APBiometricAuthentication {
        struct Static {
            //Singleton instance. Initializing keyboard manger.
            static let APAuthentication = APBiometricAuthentication()
        }
        
        /** @return Returns the default singleton instance. */
        return Static.APAuthentication
    }
    
    //Biometrics authentication reason: You can define your reason for using biometrics authetication of user here. Change this variable value using shared() instance of this class and then begin biometrics authentication
    var authenticationReason = "Biometric Authentication"
    
    /* This function directly returns a completion handler with only boolean varibale which says that whether the biometric uthentication finished successfully or not.
     */
    open func beginBiometricAuthentication(_ completion : @escaping (_ isSuccess : Bool)->Void) {
        self.beginBiometricAuthentication { (isSuccess, errorMessage) in
            completion(isSuccess)
        }
    }
    
    
    /* This function authenticate user's biometrics using LocalAuthentication framework provided by Apple. This returns a completion block of two variables.
     First variable is Boolean which indicates whether a biometric authentication finished sucessfully or not.
     If not then the second variable of completion block will return the respective error message otherwise this second variable will be having nil value.
     */
    open func beginBiometricAuthentication(_ completion : @escaping (_ isSuccess : Bool, _ errorMessage: String?)->Void) {
        
        guard #available(iOS 8.0, *) else {
            completion(false, "Not supported")
            return
        }
        
        let context = LAContext()
        var error: NSError?
        
        guard context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) else {
            completion(false, error?.localizedDescription ?? "Not supported")
            return
        }
        
        context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: self.authenticationReason) { isAuthorized, error in
            guard isAuthorized else {
                completion(false, error?.localizedDescription ?? "Failed to authenticate user's biometrics")
                return
            }
            
            completion(true, nil)
        }
    }
    
    
    /* This function authenticate user's biometrics using LocalAuthentication framework provided by Apple. This returns a completion block of two variables.
     First variable is Boolean which indicates whether a biometric authentication finished sucessfully or not.
     If not then the second variable of completion block will return the respective LAError (Local Authentication type error which are defined by Apple in LAError class) otherwise this second variable will be having nil value.
     This function is useful in case of one need to handle specific LAError and need to provide respective action in the application.
     Please note that, if error occurred duting biometrics authentication fails to convert into LAError then second variable of completion block will be having nil value. Also first variable will have FALSE value to indicate failure of biometric authentication.
     */
    open func beginBiometricAuthenticationWithLAError(completion: @escaping (_ isSuccess : Bool,_ authenticationError : LAError?)->Void) {
        
        guard #available(iOS 8.0, *) else {
            completion(false, nil)
            return
        }
        
        let context = LAContext()
        var error: NSError?
        
        guard context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) else {
            completion(false,error as? LAError)
            return
        }
        context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: self.authenticationReason) { isAuthorized, error in
            guard isAuthorized else {
                completion(false,error as? LAError)
                return
            }
            
            completion(true, nil)
        }
        
    }
}
