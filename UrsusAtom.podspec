Pod::Spec.new do |s|
  s.name = "Ursus"
  s.version = "1.0.0"
  s.summary = "A library for manipulating Urbit atoms and auras."
  s.homepage = "https://github.com/dclelland/Ursus"
  s.license = { type: 'MIT' }
  s.author = { "Daniel Clelland" => "daniel.clelland@gmail.com" }
  s.source = { git: "https://github.com/dclelland/Ursus.git", tag: "1.0.0" }
  s.swift_versions = ['5.1', '5.2']
  
  s.ios.deployment_target = '13.0'
  s.osx.deployment_target = '10.15'
  
  s.source_files = 'Ursus Atom/**/*.swift'
  
  s.dependency 'BigInt', '~> 5.0'
  
  s.subspec 'PhoneticBase' do |ss|
    ss.source_files = 'Ursus Phonetic Base/**/*.swift'
    ss.dependency 'Parity', '~> 2.3'
    ss.dependency 'MurmurHash-Swift', '~> 1.0'
  end
end