Pod::Spec.new do |s|
  s.name             = 'KingfisherWebP'
  s.version          = '0.4.2'
  s.swift_version    = '5.0'
  s.summary          = 'A Kingfisher extension helping you process webp format'

  s.description      = <<-DESC
KingfisherWebP is an extension of the popular library [Kingfisher](https://github.com/onevcat/Kingfisher), providing a ImageProcessor and CacheSerializer for you to conveniently handle the WebP format.
                       DESC

  s.homepage         = 'https://github.com/yeatse/KingfisherWebP'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Yang Chao' => 'iyeatse@gmail.com' }
  s.source           = { :git => 'https://github.com/yeatse/KingfisherWebP.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/yeatse'

  s.ios.deployment_target = '8.0'
  s.source_files = 'KingfisherWebP/Classes/**/*'
  
  s.pod_target_xcconfig = {
    'USER_HEADER_SEARCH_PATHS' => '$(inherited) $(SRCROOT)/libwebp/src'
  }
  
  #s.osx.exclude_files = # None
  #s.watchos.exclude_files = # None
  #s.ios.exclude_files = # None
  #s.tvos.exclude_files = # None

  s.dependency 'Kingfisher', '~> 4.0'
  s.dependency 'libwebp', '>= 0.5.0'
  
end
