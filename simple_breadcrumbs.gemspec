# -*- encoding: utf-8 -*-
require File.expand_path('../lib/simple_breadcrumbs/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Bryan Ricker"]
  gem.email         = ["bricker88@gmail.com"]
  gem.description   = %q{Simple, lightweight Breadcrumbs with optional hooks into Rails}
  gem.summary       = %q{Breadcrumbs!}
  gem.homepage      = "http://github.com/bricker88/simple_breadcrumbs"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "simple_breadcrumbs"
  gem.require_paths = ["lib"]
  gem.version       = SimpleBreadcrumbs::VERSION
  
  gem.add_development_dependency "rspec"
end
