# -*- encoding: utf-8 -*-
# stub: carrierwave-aws 0.4.1 ruby lib

Gem::Specification.new do |s|
  s.name = "carrierwave-aws".freeze
  s.version = "0.4.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Parker Selbert".freeze]
  s.date = "2014-03-28"
  s.description = "Use aws-sdk for S3 support in CarrierWave".freeze
  s.email = ["parker@sorentwo.com".freeze]
  s.homepage = "https://github.com/sorentwo/carrierwave-aws".freeze
  s.rubygems_version = "3.4.15".freeze
  s.summary = "A slimmer alternative to using Fog for S3 support in CarrierWave".freeze

  s.installed_by_version = "3.4.15" if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<carrierwave>.freeze, [">= 0.7"])
  s.add_runtime_dependency(%q<aws-sdk>.freeze, [">= 1.29"])
  s.add_development_dependency(%q<rspec>.freeze, ["~> 2.14"])
end
