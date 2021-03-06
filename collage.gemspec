# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'collage/version'

Gem::Specification.new do |spec|
  spec.name          = "etventure-collage-maker"
  spec.version       = Collage::VERSION
  spec.authors       = ["Mauricio Klein"]
  spec.email         = ["mauricio.klein.msk@gmail.com"]

  spec.summary       = %q{A collage maker, written in Ruby, using Flickr images}
  spec.homepage      = "https://github.com/mauricioklein/etventure-collage-maker"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'thor', "~> 0.19"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 11.1"
  spec.add_development_dependency "rspec", "~> 3.0"
end
