# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "carrierwave-aws"
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Parker Selbert"]
  s.date = "2015-09-18"
  s.description = "Use aws-sdk for S3 support in CarrierWave"
  s.email = ["parker@sorentwo.com"]
  s.homepage = "https://github.com/sorentwo/carrierwave-aws"
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.14"
  s.summary = "A slimmer alternative to using Fog for S3 support in CarrierWave"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<carrierwave>, ["~> 0.7"])
      s.add_runtime_dependency(%q<aws-sdk>, ["~> 2.0"])
      s.add_development_dependency(%q<rspec>, ["~> 3"])
    else
      s.add_dependency(%q<carrierwave>, ["~> 0.7"])
      s.add_dependency(%q<aws-sdk>, ["~> 2.0"])
      s.add_dependency(%q<rspec>, ["~> 3"])
    end
  else
    s.add_dependency(%q<carrierwave>, ["~> 0.7"])
    s.add_dependency(%q<aws-sdk>, ["~> 2.0"])
    s.add_dependency(%q<rspec>, ["~> 3"])
  end
end
