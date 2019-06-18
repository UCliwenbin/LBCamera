#
# Be sure to run `pod lib lint LBCamera.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LBCamera'
  s.version          = '1.0.2'
  s.summary          = '自定义相机,利用AVCaptureSession来自定义相机'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = '通过将拍照预览容器暴露出去，可以方便的自定义相机展示'

  s.homepage         = 'https://github.com/UCliwenbin/LBCamera'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'lwb' => '549411835@qq.com' }
  s.source           = { :git => 'https://github.com/UCliwenbin/LBCamera.git', :tag => s.version.to_s}
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
#  s.platform = :ios,'8.0'
  s.requires_arc = true

  s.source_files = 'LBCamera/Classes/**/*'
  

   s.resource_bundle = {
     'LBCamera' => ['LBCamera/Assets/*']
   }


  # s.public_header_files = 'Pod/Classes/**/*.h'
   s.frameworks = 'UIKit', 'AVFoundation'
   s.dependency 'Masonry'
end
