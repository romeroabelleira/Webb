# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'webb/version'

Gem::Specification.new do |spec|
  spec.name          = "webb"
  spec.version       = Webb::VERSION
  spec.authors       = ["Juan Romero Abelleira"]
  spec.email         = ["romero@cedras.ch"]
  spec.description   = %q{Discovers active HTTP servers within a provided range.}
  spec.summary       = %q{Webb discovers active HTTP servers within a provided range and opens the addresses in Safari. Named after the space telescope named after James E. Webb. Powered by cedras GmbH, Winterthur, Switzerland.}
  spec.homepage      = "http://cedras.net"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest",   "~> 4.7.4"
  spec.add_development_dependency "minitest-reporters"
  spec.add_development_dependency "guard-minitest"
  spec.add_development_dependency "yard"
  spec.add_development_dependency "guard-yard"

  spec.add_runtime_dependency     'thor',                 '~> 0.18.1'
  spec.add_runtime_dependency     'typhoeus',             '~> 0.6.7'
end
