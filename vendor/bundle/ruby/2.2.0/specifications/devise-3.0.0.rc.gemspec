# -*- encoding: utf-8 -*-
# stub: devise 3.0.0.rc ruby lib

Gem::Specification.new do |s|
  s.name = "devise".freeze
  s.version = "3.0.0.rc"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jos\u{e9} Valim".freeze, "Carlos Ant\u{f4}nio".freeze]
  s.date = "2013-05-07"
  s.description = "Flexible authentication solution for Rails with Warden".freeze
  s.email = "contact@plataformatec.com.br".freeze
  s.homepage = "http://github.com/plataformatec/devise".freeze
  s.licenses = ["MIT".freeze]
  s.rubyforge_project = "devise".freeze
  s.rubygems_version = "2.6.1".freeze
  s.summary = "Flexible authentication solution for Rails with Warden".freeze

  s.installed_by_version = "2.6.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<warden>.freeze, ["~> 1.2.1"])
      s.add_runtime_dependency(%q<orm_adapter>.freeze, ["~> 0.1"])
      s.add_runtime_dependency(%q<bcrypt-ruby>.freeze, ["~> 3.0"])
      s.add_runtime_dependency(%q<railties>.freeze, ["< 5", ">= 3.2.6"])
    else
      s.add_dependency(%q<warden>.freeze, ["~> 1.2.1"])
      s.add_dependency(%q<orm_adapter>.freeze, ["~> 0.1"])
      s.add_dependency(%q<bcrypt-ruby>.freeze, ["~> 3.0"])
      s.add_dependency(%q<railties>.freeze, ["< 5", ">= 3.2.6"])
    end
  else
    s.add_dependency(%q<warden>.freeze, ["~> 1.2.1"])
    s.add_dependency(%q<orm_adapter>.freeze, ["~> 0.1"])
    s.add_dependency(%q<bcrypt-ruby>.freeze, ["~> 3.0"])
    s.add_dependency(%q<railties>.freeze, ["< 5", ">= 3.2.6"])
  end
end
