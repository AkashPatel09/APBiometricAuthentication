Pod::Spec.new do |s|
  s.name             = 'APBiometricAuthentication'
  s.version          = '1.4'
  s.summary          = 'Minor changes to function for easyness.'
 
  s.description      = <<-DESC
Minor changes to function for easyness.
                       DESC
 
  s.homepage         = 'https://github.com/AkashPatel09/APBiometricAuthentication'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'AkashPatel09' => 'akashpatel116@gmail.com' }
  s.source           = { :git => 'https://github.com/AkashPatel09/APBiometricAuthentication.git', :tag => 'v1.4' }
 
  s.ios.deployment_target = '9.0'
  s.source_files = 'BiometricAuthentication/APBiometricAuthentication.swift'
 
end