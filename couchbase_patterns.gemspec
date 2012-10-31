# -*- encoding: utf-8 -*-
require File.expand_path('../lib/couchbase_patterns/version', __FILE__)

Gem::Specification.new do |gem|

  gem.authors       = ["Jasdeep Jaitla"]
  gem.email         = ["jasdeep@scalabl3.com"]
  gem.description   = %q{ActiveRecord-like Design Patterns and Other Design Patterns for Modeling with Couchbase}
  gem.summary       = %q{CouchbasePatterns employs KV patterns that can be found on CouchbaseModels.com as a convenience. This is an experimental gem at this point!}
  gem.homepage      = "https://github.com/scalabl3/couchbase-patterns"

  gem.add_dependency('couchbase-docstore', '>= 0.1.0')
  gem.add_dependency('couchbase-settings', '>= 0.1.0')
  gem.add_dependency('couchbase', '>= 1.2.0.z.beta3')
  
  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "couchbase-patterns"
  gem.require_paths = ["lib"]
  gem.version       = CouchbasePatterns::VERSION
  
end
