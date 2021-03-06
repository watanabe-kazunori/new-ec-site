# -*- encoding: utf-8 -*-
# stub: node 0.0.2 ruby lib

Gem::Specification.new do |s|
  s.name = "node".freeze
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Rafael Fran\u{c3}\u{a7}a".freeze]
  s.date = "2011-10-18"
  s.description = "Node.js library".freeze
  s.email = "rafaelmfranca@gmail.com".freeze
  s.homepage = "https://github.com/rafaelfranca/node".freeze
  s.rubygems_version = "2.6.1".freeze
  s.summary = "Node.js".freeze

  s.installed_by_version = "2.6.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<eventmachine>.freeze, [">= 0"])
    else
      s.add_dependency(%q<eventmachine>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<eventmachine>.freeze, [">= 0"])
  end
end
