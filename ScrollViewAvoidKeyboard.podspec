Pod::Spec.new do |s|
  s.name             = 'ScrollViewAvoidKeyboard'
  s.version          = '0.1.0'
  s.summary          = 'Scroll View Avoid Keyboard'
 
  s.description      = <<-DESC
This awesome view has provided scroll view, table view, collection view which auto scroll when keypad appears so keyboard won't overwrite text field and text view
                       DESC
 
  s.homepage         = 'https://github.com/HoangTuan141/ScrollViewAvoidKeyboard'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Hoang Anh Tuan' => 'ios.tuanha@gmail.com' }
  s.source           = { :git => 'https://github.com/HoangTuan141/ScrollViewAvoidKeyboard.git', :tag => s.version.to_s }
 
  s.ios.deployment_target = '10.0'
  s.source_files = 'Source/*.swift'
end