# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'blade/rails_plugin/version'

Gem::Specification.new do |spec|
  spec.name          = "blade-rails_plugin"
  spec.version       = Blade::RailsPlugin::VERSION
  spec.authors       = ["Celso Fernandes"]
  spec.email         = ["celso.fernandes@gmail.com"]

  spec.summary       = %q{Blade plugin to integrate with Rails}
  spec.description   = %q{Provides an out-of-the-box integration between Blade and Rails}
  spec.homepage      = "https://github.com/fernandes/blade-rails_plugin"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "blade", "~> 0.5"
  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "jquery-rails", "~> 4"
  spec.add_development_dependency "rails", "~> 4.2"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "sprockets-rails", "~> 3"
  spec.add_development_dependency "minitest", "~> 5.0"
end
