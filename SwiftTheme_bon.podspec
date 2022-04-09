Pod::Spec.new do |s|
  s.name         = "SwiftTheme_bon"
  s.version      = "0.6.4.0"
  s.summary      = "Powerful theme/skin manager for iOS 9+ 主题/换肤, 夜间模式 bon特供"
  s.homepage     = "https://github.com/wxxsw/SwiftTheme"

  s.license      = 'MIT'
  s.author       = { "Gesen" => "i@gesen.me" }
  s.source       = { :git => "https://github.com/yanfj/SwiftTheme.git", :tag => s.version.to_s }

  s.ios.deployment_target = "11.0"
  s.requires_arc = true

  s.source_files = 'Sources'
  
  s.swift_version = "4.2"
  s.swift_versions = ['4.2', '5.0', '5.1']

end
