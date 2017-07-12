require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name                = "RNS3"
  s.version             = package['version']
  s.summary             = package['description']
  s.homepage            = "https://github.com/mybigday/react-native-s3"
  s.license             = package['license']
  s.author              = package['author']
  s.source              = { :git => package['repository']['url'], :tag => "v#{s.version}" }
  s.default_subspec     = 'Core'
  s.requires_arc        = true
  s.platform            = :ios, "9.0"
  
  s.dependency 'React/Core'
  
  s.subspec 'Core' do |ss|
    ss.source_files     = "ios/*.{h,m,swift}"
  end

end
