Pod::Spec.new do |s|
s.name = 'ALWLinkedTextView'
s.version = '1.0.0'
s.license = 'MIT'
s.summary = '个人常用的一些小技巧与小工具.'
s.homepage = 'https://github.com/AlphaWorld/ALWLinkedTextView'
s.authors = { 'AlphaWorld' => 'JohnGump@163.com' }
s.source = { :git => 'https://github.com/AlphaWorld/ALWLinkedTextView', :tag => s.version.to_s }
s.requires_arc = true
s.ios.deployment_target = '7.0'
s.source_files = 'ALWLinkedTextView/*.{h,m}'
end
