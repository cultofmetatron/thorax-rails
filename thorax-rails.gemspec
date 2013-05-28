# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
#require 'thorax/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "thorax-rails"
  spec.version       = Thorax::Rails::VERSION
  spec.authors       = ["cultofmetatron"]
  spec.email         = ["cultofmetatron@aumlogic.com"]
  spec.description   = %q{Thorax on rails}
  spec.summary       = %q{Thorax is an awesome frontend MVC framework written on backbone }
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'railties'
  spec.add_dependency 'coffee-script'
  spec.add_dependency 'jquery-rails'
  spec.add_dependency 'ejs'

  spec.add_development_dependency "rails", [">= 4.0.0"]
 #spec.add_development_dependency 'rack'#, [">= 1.5.2"]
 spec.add_development_dependency "bundler", "~> 1.3"
 #spec.add_development_dependency "rake"
 #spec.add_development_dependency "rspec"
 #spec.add_development_dependency "rest-client"
 #spec.add_development_dependency "capybara", [">= 1.3.6"]

  spec.require_paths = ['lib']

end
