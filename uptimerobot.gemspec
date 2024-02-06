# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'uptimerobot/version'

Gem::Specification.new do |spec|
  spec.name          = 'uptimerobot'
  spec.version       = UptimeRobot::GEM_VERSION
  spec.authors       = ['Genki Sugawara', 'Greg Matthew Crossley']
  spec.email         = ['sgwr_dts@yahoo.co.jp', 'greg@crossley.to']
  spec.summary       = %q{Uptime Robot API client for Ruby.}
  spec.description   = %q{Uptime Robot API client for Ruby.}
  spec.homepage      = 'https://github.com/NeomindLabs/uptimerobot'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.end_with?('.gem') }
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'faraday', '~> 2.9'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '>= 3.0.0'
end
