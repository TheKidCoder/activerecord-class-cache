# coding: utf-8
$:.push File.expand_path('../lib', __FILE__)
require 'activerecord_class_cache/version'

Gem::Specification.new do |spec|
  spec.name          = "activerecord-class-cache"
  spec.version       = ActiverecordClassCache::VERSION
  spec.authors       = ["Christopher Ostrowski"]
  spec.email         = ["chris@madebyfunction.com"]
  spec.summary       = %q{A simple ActiveRecord::Base class method to return a table level cache_key.}
  spec.description   = %q{Sometimes a caching scenario can arise where you want to expire an entire collection. Calling ActiveRecord::Base.cache_key will give you an MD5 digest of the maximum :updated_at column and the total count.}
  spec.homepage      = "https://github.com/TheKidCoder/activerecord-class-cache"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"

  spec.add_dependency("activerecord", [">= 3.0"])
end
