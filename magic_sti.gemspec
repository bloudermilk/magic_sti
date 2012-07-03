# -*- encoding: utf-8 -*-
require File.expand_path('../lib/magic_sti/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Brendan Loudermilk"]
  gem.email         = ["brendan@gophilosophie.com"]
  gem.description   = %q{Write a gem description}
  gem.summary       = %q{Write a gem summary}
  gem.homepage      = "https://github.com/bloudermilk/magic_sti"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "magic_sti"
  gem.require_paths = ["lib"]
  gem.version       = MagicSti::VERSION

  gem.add_dependency "activesupport"
  gem.add_dependency "activerecord"
end
