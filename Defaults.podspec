Pod::Spec.new do |s|
	s.name = 'Defaults'
	s.version = '9.0.1'
	s.summary = 'Swifty and modern UserDefaults'
	s.license = 'MIT'
	s.homepage = 'https://github.com/sindresorhus/Defaults'
	s.social_media_url = 'https://twitter.com/sindresorhus'
	s.authors = { 'Sindre Sorhus' => 'sindresorhus@gmail.com' }
	s.source = { :git => 'https://github.com/sindresorhus/Defaults.git', :tag => "v#{s.version}" }
	s.source_files = 'Sources/**/*.swift'
	s.macos.deployment_target = '10.12'
	s.ios.deployment_target = '13.0'
	s.tvos.deployment_target = '13.0'
	s.watchos.deployment_target = '5.0'
end
