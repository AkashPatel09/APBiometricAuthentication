# APBiometricAuthentication
This class provides easy to use functions to authenticate user's biometrics (TouchID or FaceID) using LocalAuthentication framework provided by Apple.

## USAGE
### Option 1:
pod 'APBiometricAuthentication'

### Option 2:
Drag and drop the *APBiometricAuthentication.swift* file from project folder.

Just write below code begin authentication:
```
APBiometricAuthentication.shared.beginBiometricAuthentication { (authenticationSuccessful, errorMessage) in
    if authenticationSuccessful {
        print("Success")
    }
    else {
        print(errorMessage ?? "Error occurred while authentication")
    }
}
```

## License
Distributed under the MIT License.

