# -*- encoding: utf-8 -*-
# stub: carrierwave-aws 1.5.0 ruby lib

Gem::Specification.new do |s|
  s.name = "carrierwave-aws".freeze
  s.version = "1.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Parker Selbert".freeze]
  s.date = "2020-04-01"
  s.description = "Use aws-sdk for S3 support in CarrierWave".freeze
  s.email = ["parker@sorentwo.com".freeze]
  s.homepage = "https://github.com/sorentwo/carrierwave-aws".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.4.15".freeze
  s.summary = "Native aws-sdk support for S3 in CarrierWave".freeze

  s.installed_by_version = "3.4.15" if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<carrierwave>.freeze, ["~> 2.0"])
  s.add_runtime_dependency(%q<aws-sdk-s3>.freeze, ["~> 1.0"])
  s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
  s.add_development_dependency(%q<rspec>.freeze, ["~> 3.6"])
end
