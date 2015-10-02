# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "fog-xml"
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Wesley Beary (geemus)", "Paul Thornthwaite (tokengeek)", "The fog team"]
  s.date = "2015-04-04"
  s.description = "Extraction of the XML parsing tools shared between a\n                          number of providers in the 'fog' gem"
  s.email = ["geemus@gmail.com", "tokengeek@gmail.com"]
  s.homepage = "https://github.com/fog/fog-xml"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.14"
  s.summary = "XML parsing for fog providers"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<fog-core>, [">= 0"])
      s.add_runtime_dependency(%q<nokogiri>, [">= 1.5.11", "~> 1.5"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<minitest>, [">= 0"])
      s.add_development_dependency(%q<turn>, [">= 0"])
      s.add_development_dependency(%q<pry>, [">= 0"])
      s.add_development_dependency(%q<coveralls>, [">= 0"])
    else
      s.add_dependency(%q<fog-core>, [">= 0"])
      s.add_dependency(%q<nokogiri>, [">= 1.5.11", "~> 1.5"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<minitest>, [">= 0"])
      s.add_dependency(%q<turn>, [">= 0"])
      s.add_dependency(%q<pry>, [">= 0"])
      s.add_dependency(%q<coveralls>, [">= 0"])
    end
  else
    s.add_dependency(%q<fog-core>, [">= 0"])
    s.add_dependency(%q<nokogiri>, [">= 1.5.11", "~> 1.5"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<minitest>, [">= 0"])
    s.add_dependency(%q<turn>, [">= 0"])
    s.add_dependency(%q<pry>, [">= 0"])
    s.add_dependency(%q<coveralls>, [">= 0"])
  end
end
