
Pod::Spec.new do |s|
  s.name             = 'opencv4-contrib'
  s.version          = '0.0.1'
  s.summary          = 'Custom opencv sdk with contribute modules.'
  s.description      = <<-DESC
A new Flutter plugin project.
                       DESC
  s.homepage         = 'https://github.com/baztdl'
  s.license          = { :type => 'Apache', :file => 'LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :git => 'https://github.com/baztdl/opencv.git', :branch => 'ios', :tag => s.version.to_s }
  s.preserve_paths = 'opencv2.xcframework'
  s.vendored_frameworks = 'opencv2.xcframework'
  s.library = 'c++'
  s.xcconfig = { 'OTHER_LDFLAGS' => '-framework opencv2' }

  s.source_files = '**/*{.h,.hpp}'
  s.public_header_files = '**/*{.h,.hpp}'

  s.platform = :ios, '11.0'
  s.swift_version = '5.0'

end
