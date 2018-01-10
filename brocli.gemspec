# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "brocli/version"

Gem::Specification.new do |spec|
  spec.name          = "brocli"
  spec.version       = Brocli::VERSION
  spec.authors       = ["suman saurabh"]
  spec.email         = ["sumansaurabh93s@gmail.com"]

  spec.summary       = 'Ruby gem to expose a CLI to calculate average response time of an HTTP request.'
  spec.homepage      = 'https://rubygems.org/profiles/suman_ruby'
  spec.license       = "MIT"

  spec.files       = ['lib/brocli.rb', 'lib/brocli/cli.rb', 'lib/brocli/version.rb', 'lib/brocli/defaults.rb', 'lib/brocli/sanitizer.rb', 'lib/brocli/ping.rb', 'lib/brocli/string.rb']
  spec.executables   << 'brocli'
  spec.require_paths = ["lib"]

  #run time dependencies
  spec.add_dependency  'httparty'
  spec.add_dependency  'thor'

  #development dependencies
  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  #add additional spec.files files here
end
