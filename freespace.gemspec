# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'freespace/version'

Gem::Specification.new do |spec|
  spec.name          = "freespace"
  spec.version       = Freespace::VERSION
  spec.authors       = ["Jamie Little"]
  spec.email         = ["jamielittle@outlook.com"]

  spec.summary       = ["Get the amount of free space at a filesystem path"]
  spec.description   = ["A simple module that uses data from sys-filesystem to get a human readable amount of free space on a path"]
  spec.homepage      = "https://github.com/little9/freespace"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
  spec.add_runtime_dependency "sys-filesystem"
end
