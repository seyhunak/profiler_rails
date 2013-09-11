# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'profiler_rails/version'

Gem::Specification.new do |spec|
  spec.name          = "profiler_rails"
  spec.version       = ProfilerRails::VERSION
  spec.authors       = ["Seyhun Akyurek"]
  spec.email         = ["seyhunak@gmail.com"]
  spec.description   = %q{A profiler for Rails application based on ruby-prof that supports flat, graph and stack output}
  spec.summary       = %q{A profiler for Rails application based on ruby-prof}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "ruby-prof"
end
