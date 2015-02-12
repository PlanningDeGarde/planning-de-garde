lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'planning-de-garde/version'

Gem::Specification.new do |spec|
  spec.name          = "planning-de-garde"
  spec.version       = PlanningDeGarde::VERSION
  spec.authors       = ["Etienne Depaulis"]
  spec.email         = ["contact@planning-de-garde.fr"]
  spec.description   = %q{Planning de garde ruby is a ruby client for www.planning-de-garde.fr JSON API}
  spec.summary       = %q{Planning de garde ruby is a ruby client for www.planning-de-garde.fr JSON API}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake", '~> 10.1.0'
  spec.add_development_dependency "rspec", '~> 3.2.0'
  spec.add_development_dependency "vcr", '~> 2.9'
  spec.add_development_dependency "webmock", '~> 1.18'
  #spec.add_development_dependency "coveralls"

  spec.add_runtime_dependency     "oauth2", '~> 1.0.0'
  spec.add_runtime_dependency     "virtus", '~> 1.0'
end