#
# Be sure to run `pod lib lint iOSLaTeXX.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'iOSLaTeXX'
  s.version          = '0.3.0'
  s.summary          = 'iOS LaTeX Renderer written in Swift'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'iOSLaTeX provides a LaTeXRenderer which loads a minified version of MathJax in a WkWebView to render LaTeX into native UIImage objects'

  s.homepage         = 'https://github.com/vuongbachthu/iOSLaTeXX'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'vuongbachthu' => 'vuongbachthu@gmail.com' }
  s.source           = { :git => 'https://github.com/vuongbachthu/iOSLaTeXX.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '13.0'
  s.swift_versions = ['4.2']
  s.source_files = 'iOSLaTeXX/Classes/**/*'
  s.resource_bundles = {
    # 'iOSLaTeXX' => ['iOSLaTeXX/Assets/*.png']
    'iOSLaTeXX' => ['iOSLaTeXX/Assets/*', "iOSLaTeXX/External]/mathjax"]
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
   s.frameworks = 'UIKit', 'WebKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
