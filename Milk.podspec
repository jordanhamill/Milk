Pod::Spec.new do |s|
  s.name         = "Milk"
  s.version      = "0.0.2"
  s.summary      = "A common set of simple interfaces and operators for implementing serialization in Swift."
  s.homepage     = "https://github.com/jordanhamill/Milk"
  s.license      = 'MIT'
  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.10'
  s.author       = { "Jordan Hamill" => "jordan.hamill22@gmail.com" }
  s.source       = { :git => "https://github.com/jordanhamill/Milk.git", :tag => s.version.to_s }

  s.source_files = 'Milk/**/*.{h,m,swift}'
  s.requires_arc = true
end
