# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'font_awesome/sass/version'

Gem::Specification.new do |spec|
  spec.name          = 'font-awesome-sassc'
  spec.version       = FontAwesome::Sass::VERSION
  spec.authors       = ['Travis Chase', 'Alex Martin']
  spec.email         = ['travis@travischase.me', 'alex@atmartin.io']
  spec.description   = 'Font-Awesome gem for use in Ruby projects with either SASS or SASSC'
  spec.summary       = 'Font-Awesome SASS[C]'
  spec.homepage      = 'https://github.com/ATMartin/font-awesome-sassc'
  spec.license       = 'MIT'
  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'sassc', '>= 2.0.0'

  spec.add_development_dependency 'bundler', '>= 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'sassc-rails'
  spec.add_development_dependency 'compass'
end
