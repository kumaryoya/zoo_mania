# -*- encoding: utf-8 -*-
# stub: letter_opener_web 2.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "letter_opener_web".freeze
  s.version = "2.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Fabio Rehm".freeze, "David Muto".freeze]
  s.date = "2021-11-06"
  s.description = "Gives letter_opener an interface for browsing sent emails".freeze
  s.email = ["fgrehm@gmail.com".freeze, "david.muto@gmail.com".freeze]
  s.homepage = "https://github.com/fgrehm/letter_opener_web".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.7".freeze)
  s.rubygems_version = "3.4.15".freeze
  s.summary = "Gives letter_opener an interface for browsing sent emails".freeze

  s.installed_by_version = "3.4.15" if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<actionmailer>.freeze, [">= 5.2"])
  s.add_runtime_dependency(%q<letter_opener>.freeze, ["~> 1.7"])
  s.add_runtime_dependency(%q<railties>.freeze, [">= 5.2"])
  s.add_runtime_dependency(%q<rexml>.freeze, [">= 0"])
  s.add_development_dependency(%q<rails>.freeze, ["~> 6.1"])
  s.add_development_dependency(%q<rspec-rails>.freeze, ["~> 5.0"])
  s.add_development_dependency(%q<rubocop>.freeze, ["~> 1.22"])
  s.add_development_dependency(%q<rubocop-rails>.freeze, ["~> 2.12"])
  s.add_development_dependency(%q<rubocop-rspec>.freeze, ["~> 2.5"])
  s.add_development_dependency(%q<shoulda-matchers>.freeze, ["~> 5.0"])
end
