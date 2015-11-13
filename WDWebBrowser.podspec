
Pod::Spec.new do |s|

  s.name         = "WDWebBrowser"
  s.version      = "0.0.1"
  s.summary      = "WDWebBrowser is Good WebBrowser" 

  s.description  = <<-DESC
	It is a marquee view used on iOS, which implement by Objective-C.
                   DESC

  s.homepage     = "https://github.com/wangduan7639/WDWebBrowser"
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "wangduan" => "wangduan7639@163.com" }

  s.platform     = :ios, "7.0"

  s.source       = { :git => "https://github.com/wangduan7639/WDWebBrowser.git", :tag => "0.0.1" }

  s.source_files  = "WDWebViewController/WDWebViewViewController.{h,m}"

  s.resources = "Resources/*.png"

  s.requires_arc = true

  s.dependency 'Masonry', '~> 0.6.1'
  s.dependency 'ReactiveCocoa', '~> 2.4.7'
  s.dependency 'NJKWebViewProgress', '~> 0.2.3'

end
