# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'HarrisLouth/version'

Gem::Specification.new do |spec|
  spec.name          = "HarrisLouth"
  spec.version       = HarrisLouth::VERSION
  spec.authors       = ["Marcello Romani"]
  spec.email         = ["illello107@gmail.com"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.summary       = %q{HarrisLouth module it's a set of tools to read/write Harris Automation (.lst) and Disney (.xml) playlist version.}
  spec.description   = %q{Write a longer description or delete this line.}
  #spec.homepage      = "Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "bindata"
  spec.add_dependency "nokogiri"#, github: "sparklemotion/nokogiri"#
  spec.add_dependency "happymapper"
  spec.add_dependency "json"

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
