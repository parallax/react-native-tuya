require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "RNTuyaSdk"
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = package['author']
  s.homepage     = package['homepage']
  s.platforms    = { :ios => "9.0" }

  s.source       = { :git => "https://github.com/Volst/react-native-tuya.git", :tag => "v#{s.version}" }
  s.source_files  = "ios/**/*.{h,m}"

  s.dependency 'React'

  # Lock version of this to 5.1.0 to prevent further breaking changes
  s.dependency 'ThingSmartHomeKit', '5.1.0'

end
