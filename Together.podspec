Pod::Spec.new do |s|
  s.name             = "Together"
  s.version          = "1.0.0"
  s.summary          = "Object common properties setting for swift."
  s.homepage         = "https://github.com/eilianlove/Together"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "archerzz" => "archerzz.work@gmail.com" }
  s.source           = { :git => "https://github.com/eilianlove/Together.git",
                         :tag => s.version.to_s }
  s.source_files     = "Sources/*.swift"
  s.requires_arc     = true

  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.9"
  s.tvos.deployment_target = "9.0"
  s.watchos.deployment_target = "2.0"
  
end
