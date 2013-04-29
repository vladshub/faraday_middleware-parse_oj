# -*- encoding: utf-8 -*-
Gem::Specification.new do |gem|
  gem.authors       = %w(Vsevolod Romashov)
  gem.email         = %w(7@7vn.ru)
  gem.summary       = %q{Oj middleware for Faraday}
  gem.description   = %q{Faraday middleware for parsing JSON using the Oj parser.}
  gem.homepage      = 'https://github.com/7even/faraday_middleware-parse_oj'
  
  gem.files         = `git ls-files`.split($\)
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = 'faraday_middleware-parse_oj'
  gem.require_paths = %w(lib)
  gem.version       = '1.0.3'
  
  gem.add_dependency 'faraday_middleware', '~> 0.9'
  gem.add_dependency 'oj',                 '~> 2.0'
  
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
end
