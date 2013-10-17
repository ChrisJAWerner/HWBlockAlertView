Pod::Spec.new do |s|
  s.name         = "HWBlockAlertView"
  s.version      = "1.0.1"
  s.summary      = "A custom UIAlertView that uses blocks instead of delegates"

  s.homepage     = "https://github.com/ChrisJAWerner/HWBlockAlertView"

  s.license      = { :type => 'MIT', :file => 'LICENSE' }

  s.author       = { "ChrisJAWerner" => "cwerner@hipwooddigital.com" }

  s.source       = { :git => "https://github.com/ChrisJAWerner/HWBlockAlertView.git", :commit => "58a2495e9bc96b4342fb3366e1d24863f8799525" }

  s.source_files = '*.{h,m}'

  s.requires_arc = true
end
