Pod::Spec.new do |s|
  s.name             = 'APBiometricAuthentication'
  s.version          = '1.1'
  s.summary          = 'This class provides easy to use functions to authenticate user biometrics using LocalAuthentication framework provided by Apple.'
 
  s.description      = <<-DESC
This class provides easy to use functions to authenticate user biometrics (TouchID or FaceID) using LocalAuthentication framework provided by Apple.
                       DESC
 
  s.homepage         = 'https://github.com/AkashPatel09/APBiometricAuthentication'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'AkashPatel09' => 'akashpatel116@gmail.com' }
  s.source           = { :git => 'https://github.com/AkashPatel09/APBiometricAuthentication.git', :tag => 'v1.0' }
 
  s.ios.deployment_target = '9.0'
  s.source_files = 'BiometricAuthentication/APBiometricAuthentication.swift'
 
end