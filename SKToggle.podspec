#
# Be sure to run `pod lib lint SKToggle.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SKToggle'
  s.version          = '0.1.0'
  s.summary          = 'SKToggle button can be used to toggle between two states ON/OFF'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: SKToggle button enables user to toggle a button state. e.g. ON/OFF. All the seup can be handled from storyboard.
                       DESC

  s.homepage         = 'https://github.com/SandeepSpider811/SKToggle'
  s.screenshots     = 'https://media.giphy.com/media/l378gTMDaN1dZuffy/giphy.gif'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'SandeepSpider811' => 'sandeep.kumar811@gmail.com' }
  s.source           = { :git => 'https://github.com/SandeepSpider811/SKToggle.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  s.platform = :ios, '8.0'  

  s.source_files = 'SKToggle/Classes/**/*'
  # s.resource_bundles = {
  #   'SKToggle' => ['SKToggle/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
