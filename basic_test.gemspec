# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'basic_test/version'

Gem::Specification.new do |spec|
  spec.name          = "basic_test"
  spec.version       = BasicTest::VERSION
  spec.authors       = ["Kevin Sullivan"]
  spec.email         = ["kevinmsullivan@protonmail.com"]

  spec.summary       = %q{A really basic test suite.}
  spec.homepage      = "https://www.github.com/wolverineks/basic_test"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.1"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.2"
end
