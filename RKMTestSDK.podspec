Pod::Spec.new do |s|
  s.name         = "RKMTestSDK"
  s.version      = "1.0.0"
  s.summary      = "测试 - RKMTestSDK."
  s.homepage     = "https://github.com/RenKunMing/TestCocoaPods"
  s.license      = "MIT"
  s.author       = { "任坤明" => "kunming_ren@xinyan.com" }
  s.platform     = :ios, "8.0"
  s.requires_arc = true
  s.source       = { :git => "https://github.com/RenKunMing/TestCocoaPods.git", :tag => s.version }

  s.source_files = "RKMTestSDK/*.{h,m}"
  s.ios.vendored_frameworks = 'RKMTestSDK/SDKFramework.framework'
  s.frameworks    = 'UIKit','AVFoundation' #表示依赖系统的框架
  

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"
end
