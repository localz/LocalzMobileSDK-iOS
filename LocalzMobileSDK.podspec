Pod::Spec.new do |s|  
    s.name              = 'LocalzMobileSDK'
    s.version           = '1.4.0'
    s.summary           = 'Localz MobileSDK'
    s.homepage          = 'https://www.localz.com'
    s.author            = { 'Localz Pty Ltd' => 'hello@localz.com' }
    s.license           = {
			:type => 'Commercial',
                	:text => <<-LICENSE
                        	Copyright 2021 Localz Pty Ltd.
                        	LICENSE
    }
    s.source            = { :git => 'https://github.com/localz', :tag => s.version }
    s.platform 		= :ios, '14.0'
    s.ios.deployment_target = '14.0'

    s.ios.vendored_frameworks = 'Sources/LocalzMobileSDK.xcframework'
    s.dependency 'Apollo', '0.49.1'
    s.dependency 'Apollo/SQLite'
    s.dependency 'Apollo/WebSocket'
end 


