#
#  Be sure to run `pod spec lint HandyAutoLayout.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "YQNavigationControllerSwift"
  s.version      = "1.0.0"
  s.summary      = "A Popular navigationBar for NavigationController"

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description  = <<-DESC
                    A Popular navigationBar for NavigationController
                   DESC

  s.homepage     = "https://github.com/Winter-Yang/YQNavigationControllerSwift"
  
  # s.license      = "MIT"
  

  s.author       = { "17709215280" => "17709215280@163.com" }

  s.platform     = :ios, "8.0"

  

  s.source       = { :git => "https://github.com/Winter-Yang/YQNavigationControllerSwift.git", :tag => s.version.to_s }


  s.source_files  = 'src/YQNavigationControllerSwift/YQNavigationControllerSwift/YQNavigationViewController.{swift}'

  # s.default_subspec = 'Core'

  # s.subspec 'Core' do |core|
  #     core.source_files = 'YQNavigationControllerSwift/YQNavigationControllerSwift/YQNavigationViewController.swift'
  # end

  s.framework  = "UIKit"
  

  s.requires_arc = true

end