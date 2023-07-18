# -*- encoding: utf-8 -*-
# stub: aws-sdk 3.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "aws-sdk".freeze
  s.version = "3.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "changelog_uri" => "https://github.com/aws/aws-sdk-ruby/tree/version-3/gems/aws-sdk/CHANGELOG.md", "source_code_uri" => "https://github.com/aws/aws-sdk-ruby/tree/version-3/gems/aws-sdk" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Amazon Web Services".freeze]
  s.date = "2021-09-01"
  s.description = "The official AWS SDK for Ruby. Provides both resource oriented interfaces and API clients for AWS services.".freeze
  s.email = ["aws-dr-rubygems@amazon.com".freeze]
  s.homepage = "https://github.com/aws/aws-sdk-ruby".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3".freeze)
  s.rubygems_version = "3.4.15".freeze
  s.summary = "AWS SDK for Ruby".freeze

  s.installed_by_version = "3.4.15" if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<aws-sdk-resources>.freeze, ["~> 3"])
end
