Pod::Spec.new do |s|
  s.name = 'KustomerChat'
  s.version = '2.7.8'
  s.swift_version = '5.0'
  s.cocoapods_version = '>= 1.10.0'
  s.authors = 'Kustomer.com'
  s.license = { :type => 'custom', :file => 'LICENSE' }
  s.homepage = 'https://github.com/SamuelBoyce/kustomer-ios-testing'
  s.source = {
    :http => 'https://github.com/SamuelBoyce/kustomer-ios-testing/releases/download/2.7.8/KustomerChat.zip',
    :sha256 => '8439b7c3de51fa428efd1fda2a0d76674e7aed2e3dcf03cc2affe261196a94ef'
  }
  s.summary = 'The iOS SDK for the Kustomer.com mobile client'
  s.documentation_url = 'https://developer.kustomer.com/chat-sdk/docs'
  s.platform = :ios
  s.ios.deployment_target = '11.0'
  s.vendored_frameworks = 'KustomerChat.xcframework'
  s.dependency 'PubNubSwift', '~> 5.0.0'
  s.dependency 'Down', '~> 0.11.0'
end
