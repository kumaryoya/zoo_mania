# -*- encoding: utf-8 -*-
# stub: fog 0.7.2 ruby lib

Gem::Specification.new do |s|
  s.name = "fog".freeze
  s.version = "0.7.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["geemus (Wesley Beary)".freeze]
  s.date = "2011-04-05"
  s.description = "The Ruby cloud services library.".freeze
  s.email = "geemus@gmail.com".freeze
  s.executables = ["fog".freeze]
  s.extra_rdoc_files = ["README.rdoc".freeze]
  s.files = ["README.rdoc".freeze, "bin/fog".freeze]
  s.homepage = "http://github.com/geemus/fog".freeze
  s.rdoc_options = ["--charset=UTF-8".freeze]
  s.rubygems_version = "3.4.15".freeze
  s.summary = "brings clouds to you".freeze

  s.installed_by_version = "3.4.15" if s.respond_to? :installed_by_version

  s.specification_version = 2

  s.add_runtime_dependency(%q<builder>.freeze, [">= 0"])
  s.add_runtime_dependency(%q<excon>.freeze, [">= 0.6.1"])
  s.add_runtime_dependency(%q<formatador>.freeze, [">= 0.1.3"])
  s.add_runtime_dependency(%q<json>.freeze, [">= 0"])
  s.add_runtime_dependency(%q<mime-types>.freeze, [">= 0"])
  s.add_runtime_dependency(%q<net-ssh>.freeze, [">= 2.1.3"])
  s.add_runtime_dependency(%q<nokogiri>.freeze, [">= 1.4.4"])
  s.add_runtime_dependency(%q<ruby-hmac>.freeze, [">= 0"])
  s.add_development_dependency(%q<jekyll>.freeze, [">= 0"])
  s.add_development_dependency(%q<rake>.freeze, [">= 0"])
  s.add_development_dependency(%q<rspec>.freeze, ["= 1.3.1"])
  s.add_development_dependency(%q<shindo>.freeze, ["= 0.3.4"])
  s.add_development_dependency(%q<virtualbox>.freeze, ["= 0.8.3"])
end
