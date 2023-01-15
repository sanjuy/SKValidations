Pod::Spec.new do |spec|

  spec.name         = "SKValidations"
  spec.version      = "1.0.0"
  spec.summary      = "you can use this pod to validate your emailID and mobile number"

  spec.description  = "don't have idea user can use this pod to verify emailID and mobile number"

  spec.homepage     = "https://github.com/sanjuy/SKValidations"
 
  spec.license      = "MIT"

  spec.author             = { "sanju" => "kumar.sanju056@gmail.com" }

  spec.platform     = :ios, "13.0"

  spec.source       = { :git => "https://github.com/sanjuy/SKValidations.git", :tag => spec.version.to_s }

  spec.source_files  = "SKValidations/**/*.{swift}"
  spec.swift_version = "5.0"
end
