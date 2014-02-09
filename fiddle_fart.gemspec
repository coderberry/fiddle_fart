# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fiddle_fart/version'

Gem::Specification.new do |spec|
  spec.name          = "fiddle_fart"
  spec.version       = FiddleFart::VERSION
  spec.authors       = ["Eric Berry"]
  spec.email         = ["cavneb@gmail.com"]
  spec.summary       = "Parse embed data from jsfiddle, jsbin, codepen and plnkr"
  spec.description   = %q{FiddleFart is the parsing tool which takes a URL from any of the following services and normalizes the embed data.}
  spec.homepage      = "https://github.com/cavneb/fiddle_fart"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
