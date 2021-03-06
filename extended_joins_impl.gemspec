# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'extended_joins_impl/version'

Gem::Specification.new do |spec|
  spec.name          = "extended_joins_impl"
  spec.version       = ExtendedJoinsImpl::VERSION
  spec.authors       = ["MnrUchida"]
  spec.email         = ["mukenan108@gmail.com"]
  spec.summary       = %q{Syntactic sugar for ActiveRecord.}
  spec.description   = %q{Syntactic sugar for using a subquery and left outer join in ActiveRecord}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'sqlite3'
  spec.add_development_dependency "rspec"
end
