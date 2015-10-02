# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "aws-sdk"
  s.version = "2.1.24"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Amazon Web Services"]
  s.date = "2015-09-29"
  s.description = "The official AWS SDK for Ruby. Provides both resource oriented interfaces and API clients for AWS services."
  s.email = ["trevrowe@amazon.com"]
  s.homepage = "http://github.com/aws/aws-sdk-ruby"
  s.licenses = ["Apache 2.0"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.14"
  s.summary = "AWS SDK for Ruby"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<aws-sdk-resources>, ["= 2.1.24"])
    else
      s.add_dependency(%q<aws-sdk-resources>, ["= 2.1.24"])
    end
  else
    s.add_dependency(%q<aws-sdk-resources>, ["= 2.1.24"])
  end
end
