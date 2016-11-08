# encoding: utf-8
lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'linx_microvix/version'

Gem::Specification.new do |spec|
  spec.name         = 'linx_microvix'
  spec.version      = LinxMicrovix::VERSION
  spec.platform     = Gem::Platform::RUBY
  spec.authors      = ['Paulo Henrique Bruce']
  spec.email        = ['brucepaulohenrique@gmail.com']
  spec.homepage     = 'https://github.com/phbruce/linx_microvix'
  spec.summary      = 'Ruby interface for the Linx Microvix API'
  spec.description  = 'This gem is prepared to integrate with Linx Microvix'

  spec.required_rubygems_version = '>= 1.3.6'
  spec.license = 'MIT'

  spec.add_runtime_dependency('typhoeus', '~> 0.7')
  spec.add_development_dependency('rspec', '~> 3.0')

  spec.files        = Dir['README.md', 'Gemfile', 'lib/**/*']
  spec.test_files   = `git ls-files -- spec/*`.split("\n")
  spec.require_path = 'lib'
end
