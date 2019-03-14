Pod::Spec.new do |s|
  s.name             = 'APBiometricAuthentication'
  s.version          = '1.3'
  s.summary          = 'Issue of accessing functions has been resolved'
 
  s.description      = <<-DESC
Issue of accessing functions has been resolved.
                       DESC
 
  s.homepage         = 'https://github.com/AkashPatel09/APBiometricAuthentication'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'AkashPatel09' => 'akashpatel116@gmail.com' }
  s.source           = { :git => 'https://github.com/AkashPatel09/APBiometricAuthentication.git', :tag => 'v1.3' }
 
  s.ios.deployment_target = '9.0'
  s.source_files = 'BiometricAuthentication/APBiometricAuthentication.swift'
 
end