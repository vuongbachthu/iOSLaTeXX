#
# Be sure to run `pod lib lint iOSLaTeXX.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'iOSLaTeXX'
  s.version          = '0.1.0'
  s.summary          = 'iOSLaTeXX - Helps you easily handle LaTex in Swift IOS App, It is a Clone of iOSLaTeX'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'iOSLaTeXX - Helps you easily handle LaTex in Swift IOS App, It is a Clone of iOSLaTeX, Because iOSLaTeX was deleted from GitHub by its owner, I remade a version to serve my applications.'

  s.homepage         = 'https://github.com/vuongbachthu/iOSLaTeXX'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'vuongbachthu' => 'vuongbachthu@gmail.com' }
  s.source           = { :git => 'https://github.com/vuongbachthu/iOSLaTeXX.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '13.0'
  
  s.swift_versions = ['4.0']

  s.source_files = 'iOSLaTeXX/Classes/**/*'
  
  # s.resource_bundles = {
  #   'iOSLaTeXX' => ['iOSLaTeXX/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
