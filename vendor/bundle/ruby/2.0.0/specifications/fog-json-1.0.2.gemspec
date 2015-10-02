# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "fog-json"
  s.version = "1.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Wesley Beary (geemus)", "Paul Thornthwaite (tokengeek)", "The fog team"]
  s.date = "2015-05-30"
  s.description = "Extraction of the JSON parsing tools shared between a\n                          number of providers in the 'fog' gem."
  s.email = ["geemus@gmail.com", "tokengeek@gmail.com"]
  s.homepage = "http://github.com/fog/fog-json"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.14"
  s.summary = "JSON parsing for fog providers"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<fog-core>, ["~> 1.0"])
      s.add_runtime_dependency(%q<multi_json>, ["~> 1.10"])
      s.add_development_dependency(%q<bundler>, ["~> 1.5"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<minitest>, [">= 0"])
    else
      s.add_dependency(%q<fog-core>, ["~> 1.0"])
      s.add_dependency(%q<multi_json>, ["~> 1.10"])
      s.add_dependency(%q<bundler>, ["~> 1.5"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<minitest>, [">= 0"])
    end
  else
    s.add_dependency(%q<fog-core>, ["~> 1.0"])
    s.add_dependency(%q<multi_json>, ["~> 1.10"])
    s.add_dependency(%q<bundler>, ["~> 1.5"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<minitest>, [">= 0"])
  end
end
