# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'harness/sequel/version'

Gem::Specification.new do |spec|
  spec.name          = "harness-sequel"
  spec.version       = Harness::Sequel::VERSION
  spec.authors       = ["ahawkins"]
  spec.email         = ["adam@hawkins.io"]
  spec.description   = %q{Report sequel performance metrics to Harness}
  spec.summary       = %q{}
  spec.homepage      = "https://github.com/ahawkins/harness-sequel"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "harness"
  spec.add_dependency "sequel"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "sqlite3"
end
