Pod::Spec.new do |spec|
  spec.name         = "Journey2"
  spec.version      = "1.0.0"
  spec.summary      = "Another journey library"
  spec.description  = <<-DESC
  A journey and their features.
                   DESC
  spec.homepage     = "https://github.com/gu7araujo/iOS-Journey2-Library"
  spec.license      = "MIT"
  spec.author       = "Gustavo Araujo Santos"
  
  spec.platform     = :ios
  spec.platform     = :ios, "17"
  spec.swift_version = '5.9'

  spec.source       = { :git => "git@github.com:gu7araujo/iOS-Journey2-Library.git", :tag => "#{spec.version}" }

  spec.source_files  = "Journey2/**/*"
  spec.dependency "Core"
end
