# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "carrierwave_direct"
  s.version = "0.0.15"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["David Wilkie"]
  s.date = "2015-02-25"
  s.description = "Process your uploads in the background by uploading directly to S3"
  s.email = ["dwilkie@gmail.com"]
  s.homepage = "https://github.com/dwilkie/carrierwave_direct"
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.0")
  s.rubyforge_project = "carrierwave_direct"
  s.rubygems_version = "2.0.14"
  s.summary = "Upload direct to S3 using CarrierWave"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<carrierwave>, [">= 0"])
      s.add_runtime_dependency(%q<uuidtools>, [">= 0"])
      s.add_runtime_dependency(%q<fog>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<timecop>, [">= 0"])
      s.add_development_dependency(%q<rails>, [">= 3.2.12"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
      s.add_development_dependency(%q<capybara>, [">= 0"])
    else
      s.add_dependency(%q<carrierwave>, [">= 0"])
      s.add_dependency(%q<uuidtools>, [">= 0"])
      s.add_dependency(%q<fog>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<timecop>, [">= 0"])
      s.add_dependency(%q<rails>, [">= 3.2.12"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
      s.add_dependency(%q<capybara>, [">= 0"])
    end
  else
    s.add_dependency(%q<carrierwave>, [">= 0"])
    s.add_dependency(%q<uuidtools>, [">= 0"])
    s.add_dependency(%q<fog>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<timecop>, [">= 0"])
    s.add_dependency(%q<rails>, [">= 3.2.12"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
    s.add_dependency(%q<capybara>, [">= 0"])
  end
end
