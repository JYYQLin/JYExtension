Pod::Spec.new do |spec|
  	spec.name         = "JYExtension"
  	spec.version      = "1.0.0"
  	spec.summary      = "个人常用的一些扩展"
  	spec.homepage     = "https://github.com/JYYQLin/JYExtension"
  	spec.license      = { :type => "MIT", :file => "LICENSE" }
  	spec.author       = { "JYYQLin" => "No mailBox" }
  	spec.platform     = :ios, "13.0"
  	spec.source       = { :git => "https://github.com/JYYQLin/JYExtension.git", :tag => "#{spec.version}" }
  	spec.source_files  = "JYExtension/*.{h,m,swift}"
	spec.swift_versions = ['5.0', '5.1', '5.2']
end
