# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ultraquiz/version'

Gem::Specification.new do |spec|
  spec.name          = "ultraquiz"
  spec.version       = Ultraquiz::VERSION
  spec.authors       = ["Yusuke Ando"]
  spec.email         = ["yandod@gmail.com"]
  spec.description   = 'get trivial stats from rubygems.org'
  spec.summary       = 'get trivial stats'
  spec.homepage      = "https://github.com/yandod/ultraquiz"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "gems"
  spec.add_dependency "thor"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
