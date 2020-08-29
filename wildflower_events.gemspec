require_relative 'lib/wildflower_events/version'

Gem::Specification.new do |spec|
  spec.name          = "wildflower_events"
  spec.version       = WildflowerEvents::VERSION
  spec.authors       = ["lauren-kohn"]
  spec.email         = ["lauren.kohn@soft-adv.com"]

  spec.summary       = %q{Search events at the University of Texas Lady Bird Johnson Wildflower Center.}
  spec.description   = %q{Welcome to Wildflower Events, a gem that will help you search for events at the University of Texas Lady Bird Johnson Wildflower Center outside of Austin, Texas. Founded in 1982, the Wildflower Center is dedicated to the conservation of native plants. To this end, they provide many opportunities for nature appreciation, plant conservation and ecological research and design.}
  spec.homepage      = "http://no.website.yet"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "http://mygemserver.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "http://maybe.public.com"
  spec.metadata["changelog_uri"] = "http://website.holdingspace.com"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"	
  spec.add_dependency "nokogiri"
end
