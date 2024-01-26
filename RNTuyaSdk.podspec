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

  # All versions locked to version(s) that have previously worked
  # This is to prevent Tuya SDK pushing breaking changes to production (which happens)
  s.dependency 'ThingBluetooth', '5.0.6'
  s.dependency 'ThingMbedtls', '3.3.0'
  s.dependency 'ThingOpenSSLSDK', '1.1.1-t.0'
  s.dependency 'ThingSmartActivatorCoreKit', '5.3.10'
  s.dependency 'ThingSmartActivatorKit', '5.1.2'
  s.dependency 'ThingSmartBaseKit', '5.1.7'
  s.dependency 'ThingSmartBeaconKit', '5.0.3'
  s.dependency 'ThingSmartBLECoreKit', '5.2.2'
  s.dependency 'ThingSmartBLEKit', '5.1.3'
  s.dependency 'ThingSmartBLEMeshKit', '5.1.4'
  s.dependency 'ThingSmartCryption', '5.0.0'
  s.dependency 'ThingSmartDeviceCoreKit', '5.5.0'
  s.dependency 'ThingSmartDeviceKit', '5.4.3'
  s.dependency 'ThingSmartFeedbackKit', '5.0.0'
  s.dependency 'ThingSmartHomeKit', '5.2.0'
  s.dependency 'ThingSmartMessageKit', '5.0.0'
  s.dependency 'ThingSmartMQTTChannelKit', '5.0.2'
  s.dependency 'ThingSmartNetworkKit', '5.0.8'
  s.dependency 'ThingSmartPairingCoreKit', '5.2.6'
  s.dependency 'ThingSmartSceneCoreKit', '5.5.0'
  s.dependency 'ThingSmartSceneKit', '5.1.0'
  s.dependency 'ThingSmartShareKit', '5.1.0'
  s.dependency 'ThingSmartSocketChannelKit', '5.0.3'
  s.dependency 'ThingSmartTimerKit', '5.0.0'
  s.dependency 'ThingSmartUtil', '5.4.0'

end
