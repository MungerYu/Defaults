Pod::Spec.new do |s|
  s.name             = 'Defaults'
  s.version          = '1.0.0'
  s.summary          = 'A Swifty UserDefaults wrapper with compile‑time macro support.'
  s.homepage         = 'https://github.com/sindresorhus/Defaults'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.social_media_url = 'https://twitter.com/sindresorhus'
  s.authors = { 'Sindre Sorhus' => 'sindresorhus@gmail.com' }
  s.source = { :git => 'https://github.com/sindresorhus/Defaults.git', :tag => "v#{s.version}" }

  s.platform     = :ios,     '14.0'
  s.platform     = :osx,     '11.0'
  s.platform     = :tvos,    '14.0'
  s.platform     = :watchos, '9.0'
  s.platform     = :visionos,'1.0'

  s.swift_version = '5.7'

  # Core Defaults library
  s.subspec 'Core' do |core|
    core.source_files  = 'Sources/Defaults/**/*.{swift}'
    core.resources     = 'Sources/Defaults/PrivacyInfo.xcprivacy'
    core.dependency    'SwiftSyntax', '>= 601.0.0'
  end

  # Macros plugin (compiler plugin)
    s.subspec 'Macros' do |m|
    m.source_files = [
      'Sources/DefaultsMacrosDeclarations/**/*.{swift}',
      'Sources/DefaultsMacros/**/*.{swift}'
    ]
    m.dependency 'Defaults/Core'
    m.dependency 'SwiftSyntax', '>= 601.0.0'
  end


  # Unit tests (optional; CocoaPods Tests have limited support)
  # You can run these locally if you `pod install --project-directory=Tests`.
    s.subspec 'Tests' do |t|
    t.source_files = [
      'Tests/DefaultsTests/**/*.{swift}',
      'Tests/DefaultsMacrosDeclarationsTests/**/*.{swift}',
      'Tests/DefaultsMacrosTests/**/*.{swift}'
    ]
    t.dependency 'Defaults/Core'
    t.dependency 'Defaults/Macros'
  end


end
