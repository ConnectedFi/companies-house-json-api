# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'chjsonapi/version'

Gem::Specification.new do |spec|
  spec.name          = "chjsonapi"
  spec.version       = ChJsonApi::VERSION
  spec.authors       = ["Matheus Serpellone"]
  spec.email         = ["m.serpellone@gmail.com"]


  spec.summary       = %q{Gem to assist on calls to Companies House JSON API}
  spec.description   = %q{Companies House JSON API gem}
  spec.homepage      = "https://github.com/inniaccounts/companies-house-json-api"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.3"

  spec.add_dependency "curb", "~> 0.8"
  spec.add_dependency "json", "~> 2.1"

end
