#
# Be sure to run `pod lib lint EasyLocalization.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'EasyLocalization'
  s.version          = '0.1.0'
  s.summary          = 'make multi language application easily without restart your app.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
EasyLocalization is library for make your application be multi language easily without restart your app
DESC

  s.homepage         = 'https://github.com/eldesoky/EasyLocalization'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'abdelrahman eldesoky' => 'abdelrahman.m.desoky@gmail.com' }
  s.source           = { :git => 'https://github.com/eldesoky/EasyLocalization.git', :tag => s.version }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'EasyLocalization/Classes/**/*'
  
  # s.resource_bundles = {
  #   'EasyLocalization' => ['EasyLocalization/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
