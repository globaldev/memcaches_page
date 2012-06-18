# -*- encoding: utf-8 -*-
Gem::Specification.new do |gem|
  gem.authors       = ["Paul Bowsher"]
  gem.email         = ["pbowsher@globalpersonals.co.uk"]
  gem.description   = %q{Overrides caches_page and stores in memcached instead.}
  gem.summary       = %q{Uses configuration from Rails cache store. Optionally takes a :namespace configuration key too.}
  gem.homepage      = ""
  
  gem.add_dependency("rails", "~> 3.1")

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "memcaches_page"
  gem.require_paths = ["lib"]
  gem.version       = '0.1.0'
end
