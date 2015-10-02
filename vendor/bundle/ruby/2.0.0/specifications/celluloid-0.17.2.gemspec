# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "celluloid"
  s.version = "0.17.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tony Arcieri", "Donovan Keme"]
  s.date = "2015-09-30"
  s.description = "Celluloid enables people to build concurrent programs out of concurrent objects just as easily as they build sequential programs out of sequential objects"
  s.email = ["tony.arcieri@gmail.com", "code@extremist.digital"]
  s.homepage = "https://github.com/celluloid/celluloid"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3")
  s.rubygems_version = "2.0.14"
  s.summary = "Actor-based concurrent object framework for Ruby"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<nenv>, [">= 0"])
      s.add_development_dependency(%q<dotenv>, [">= 0"])
      s.add_development_dependency(%q<benchmark_suite>, [">= 0"])
      s.add_development_dependency(%q<rubocop>, [">= 0"])
      s.add_development_dependency(%q<transpec>, [">= 0"])
      s.add_development_dependency(%q<pry>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<guard-rspec>, [">= 0"])
      s.add_development_dependency(%q<rspec-retry>, [">= 0"])
      s.add_development_dependency(%q<coveralls>, [">= 0"])
      s.add_runtime_dependency(%q<celluloid-essentials>, [">= 0"])
      s.add_runtime_dependency(%q<celluloid-supervision>, [">= 0"])
      s.add_runtime_dependency(%q<celluloid-pool>, [">= 0"])
      s.add_runtime_dependency(%q<celluloid-fsm>, [">= 0"])
      s.add_runtime_dependency(%q<celluloid-extras>, [">= 0"])
      s.add_runtime_dependency(%q<timers>, [">= 4.1.1"])
    else
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<nenv>, [">= 0"])
      s.add_dependency(%q<dotenv>, [">= 0"])
      s.add_dependency(%q<benchmark_suite>, [">= 0"])
      s.add_dependency(%q<rubocop>, [">= 0"])
      s.add_dependency(%q<transpec>, [">= 0"])
      s.add_dependency(%q<pry>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<guard-rspec>, [">= 0"])
      s.add_dependency(%q<rspec-retry>, [">= 0"])
      s.add_dependency(%q<coveralls>, [">= 0"])
      s.add_dependency(%q<celluloid-essentials>, [">= 0"])
      s.add_dependency(%q<celluloid-supervision>, [">= 0"])
      s.add_dependency(%q<celluloid-pool>, [">= 0"])
      s.add_dependency(%q<celluloid-fsm>, [">= 0"])
      s.add_dependency(%q<celluloid-extras>, [">= 0"])
      s.add_dependency(%q<timers>, [">= 4.1.1"])
    end
  else
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<nenv>, [">= 0"])
    s.add_dependency(%q<dotenv>, [">= 0"])
    s.add_dependency(%q<benchmark_suite>, [">= 0"])
    s.add_dependency(%q<rubocop>, [">= 0"])
    s.add_dependency(%q<transpec>, [">= 0"])
    s.add_dependency(%q<pry>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<guard-rspec>, [">= 0"])
    s.add_dependency(%q<rspec-retry>, [">= 0"])
    s.add_dependency(%q<coveralls>, [">= 0"])
    s.add_dependency(%q<celluloid-essentials>, [">= 0"])
    s.add_dependency(%q<celluloid-supervision>, [">= 0"])
    s.add_dependency(%q<celluloid-pool>, [">= 0"])
    s.add_dependency(%q<celluloid-fsm>, [">= 0"])
    s.add_dependency(%q<celluloid-extras>, [">= 0"])
    s.add_dependency(%q<timers>, [">= 4.1.1"])
  end
end
