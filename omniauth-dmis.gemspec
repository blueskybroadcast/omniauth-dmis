# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth-dmis/version'

Gem::Specification.new do |spec|
  spec.name          = 'omniauth-dmis'
  spec.version       = Omniauth::Dmis::VERSION
  spec.authors       = ['Bohdan Cherevatenko']
  spec.email         = ['bohdan@rubygarage.org']
  spec.summary       = %q{DMIS SSO}
  spec.description   = %q{DMIS SSO}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'builder'
  spec.add_dependency 'omniauth', '~> 1.0'
  spec.add_dependency 'omniauth-oauth2', '~> 1.0'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
end
