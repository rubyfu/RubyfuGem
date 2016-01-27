# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubyfu/version'

Gem::Specification.new do |gem|
  gem.name          = "rubyfu"
  gem.version       = Rubyfu::VERSION
  gem.summary       = %q{Rubyfu, where Ruby goes eveil!}
  gem.description   = %q{Experiance-based Ruby book for hackers. This gem, allows you to browse the book offline}
  gem.license       = "CC BY-NC-SA"
  
  gem.authors       = ["KINGSABRI"]
  gem.email         = ["king.sabri@gmail.com"]
  gem.homepage      = "https://rubyfu.net"

  gem.add_dependency "watir"
  
  gem.files = Dir.glob("*.md")     +
              Dir.glob("Rakefile") +
              Dir.glob("lib/**/*") +
              Dir.glob("bin/**/*")
  
  gem.bindir        = "bin"
  gem.executables   = %w(rubyfu)
  gem.require_paths = ["lib"]
end
