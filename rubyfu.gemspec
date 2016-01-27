# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubyfu/version'

Gem::Specification.new do |spec|
  spec.name          = "rubyfu"
  spec.version       = Rubyfu::VERSION
  spec.authors       = ["KINGSABRI"]
  spec.email         = ["king.sabri@gmail.com"]

  spec.summary       = %q{Rubyfu, where Ruby goes eveil!}
  spec.description   = %q{Experiance-based Ruby for hackers book.}
  spec.homepage      = "https://rubyfu.net"
  spec.license       = "CC BY-NC-SA"

  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "watir"
  
  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end
