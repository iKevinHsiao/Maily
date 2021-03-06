Pod::Spec.new do |s|
  s.name = "Maily"
  s.version = "1.0.0"
  s.summary = "Send email to third-party mail clients easy."
  s.homepage = "https://github.com/ismetanin/Maily"
  s.license = "MIT"
  s.author = { "Ivan Smetanin" => "smetanin23@yandex.ru" }
  s.source = { :git => "https://github.com/ismetanin/Maily.git", :tag => s.version }

  s.source_files = 'Sources/Maily/**/*.swift'
  s.framework = 'UIKit'
  s.ios.deployment_target = '10.0'
  s.swift_version = '5'

end
