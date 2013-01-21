# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rsvn/version'

Gem::Specification.new do |gem|
  gem.name          = "rsvn"
  gem.version       = Rsvn::VERSION
  gem.authors       = ["Brian D. Nelson"]
  gem.email         = ["bdnelson@bdnsolutions.com"]
  gem.description   = %q{Gem to provide basic access to Subversion information (wraps Ruby SVN bindings).}
  gem.summary       = %q{Gem to provide basic access to Subversion information (wraps Ruby SVN bindings).}
  gem.homepage      = "https://github.com/bdnelson/rsvn"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
