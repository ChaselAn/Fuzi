Pod::Spec.new do |s|
  s.name         = "LiKui"
  s.version      = "2.0.2"
  s.license      = "MIT"
  s.summary      = "A fast & lightweight XML & HTML parser in Swift with XPath & CSS support"
  s.homepage     = "https://github.com/ChaselAn/Fuzi"
  s.author       =  {'ChaselAn' => '865770853@qq.com'}
  s.source       = { :git => "https://github.com/ChaselAn/Fuzi.git", :tag => s.version }

  # cocoadocs.org might not be working
  # s.documentation_url = "http://cezheng.github.io/Fuzi"
  
  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.9"
  s.watchos.deployment_target = "2.0"
  s.tvos.deployment_target = "9.0"

  s.source_files  = "Sources/*.swift"
  s.preserve_paths = "libxml2/*"

  s.requires_arc = true
  s.library = "xml2"
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2', 'SWIFT_INCLUDE_PATHS' => '$(SRCROOT)/LiKui/libxml2' }

  # Uncomment for `pob lib lint`
  # s.prepare_command = 'mkdir -p $TMPDIR/CocoaPods/Lint/Pods/Fuzi && cp -r libxml2 $TMPDIR/CocoaPods/Lint/Pods/Fuzi/libxml2'
end
