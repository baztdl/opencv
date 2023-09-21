#
#  Be sure to run `pod spec lint opencv.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "opencv4-contrib"
  spec.version      = "0.0.1"
  spec.summary      = "OpenCV with all required plugins"
  spec.description      = <<-DESC
      A new Flutter plugin project.
                         DESC
  spec.homepage     = "https://github.com/baztdl/opencv"


  spec.license          = { :type => 'Apache', :file => 'LICENSE' }

  spec.author             = { "BAZTDL" => "contact@baztdl.com" }

  spec.source       = { :git => "https://github.com/baztdl/opencv.git", :branch => 'ios', :tag => spec.version.to_s  }

  spec.platform = :ios, '11.0'
  spec.swift_version = '5.0'

  spec.source_files = '**/*{.h,.hpp}'
  spec.public_header_files = '**/*{.h,.hpp}'


  spec.preserve_paths = 'opencv2.xcframework'
  spec.vendored_frameworks = 'opencv2.xcframework'
  spec.library = 'c++'
  spec.xcconfig = { 'OTHER_LDFLAGS' => '-framework opencv2' }

end
