# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "CFPropertyList-rails"
  s.version = "1.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Matthias Schmidt"]
  s.date = "2013-02-26"
  s.description = "Binary Plist (CFPropertyList) renderer for rails3 apps."
  s.email = ["mail@m-schmidt.eu"]
  s.homepage = "https://github.com/MSchmidt/CFPropertyList-rails"
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.14"
  s.summary = "CFPropertyList for rails3"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<CFPropertyList>, ["~> 2.2.0"])
      s.add_runtime_dependency(%q<railties>, ["< 5", ">= 3"])
    else
      s.add_dependency(%q<CFPropertyList>, ["~> 2.2.0"])
      s.add_dependency(%q<railties>, ["< 5", ">= 3"])
    end
  else
    s.add_dependency(%q<CFPropertyList>, ["~> 2.2.0"])
    s.add_dependency(%q<railties>, ["< 5", ">= 3"])
  end
end
