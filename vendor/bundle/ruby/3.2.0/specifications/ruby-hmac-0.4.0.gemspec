# -*- encoding: utf-8 -*-
# stub: ruby-hmac 0.4.0 ruby lib

Gem::Specification.new do |s|
  s.name = "ruby-hmac".freeze
  s.version = "0.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Daiki Ueno".freeze, "Geoffrey Grosenbach".freeze]
  s.date = "2010-01-20"
  s.description = "This module provides common interface to HMAC functionality. HMAC is a kind of \"Message Authentication Code\" (MAC) algorithm whose standard is documented in RFC2104. Namely, a MAC provides a way to check the integrity of information transmitted over or stored in an unreliable medium, based on a secret key.\n\nOriginally written by Daiki Ueno. Converted to a RubyGem by Geoffrey Grosenbach".freeze
  s.email = ["".freeze, "boss@topfunky.com".freeze]
  s.extra_rdoc_files = ["History.txt".freeze, "Manifest.txt".freeze, "README.txt".freeze]
  s.files = ["History.txt".freeze, "Manifest.txt".freeze, "README.txt".freeze]
  s.homepage = "http://ruby-hmac.rubyforge.org".freeze
  s.rdoc_options = ["--main".freeze, "README.txt".freeze]
  s.rubygems_version = "3.4.15".freeze
  s.summary = "This module provides common interface to HMAC functionality".freeze

  s.installed_by_version = "3.4.15" if s.respond_to? :installed_by_version

  s.specification_version = 3

  s.add_development_dependency(%q<rubyforge>.freeze, [">= 2.0.3"])
  s.add_development_dependency(%q<gemcutter>.freeze, [">= 0.2.1"])
  s.add_development_dependency(%q<hoe>.freeze, [">= 2.5.0"])
end
