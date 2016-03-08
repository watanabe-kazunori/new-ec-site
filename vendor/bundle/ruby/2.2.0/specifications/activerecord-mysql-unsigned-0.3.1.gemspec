# -*- encoding: utf-8 -*-
# stub: activerecord-mysql-unsigned 0.3.1 ruby lib

Gem::Specification.new do |s|
  s.name = "activerecord-mysql-unsigned".freeze
  s.version = "0.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["yo_waka".freeze]
  s.date = "2014-11-23"
  s.description = "Add unsigned option to integer type for ActiveRecord's MySQL2 adapter".freeze
  s.email = ["y.wakahara@gmail.com".freeze]
  s.homepage = "https://github.com/waka/activerecord-mysql-unsigned".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.1".freeze
  s.summary = "Add unsigned option to integer type for ActiveRecord's MySQL2 adapter".freeze

  s.installed_by_version = "2.6.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0.0"])
      s.add_development_dependency(%q<database_cleaner>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<activesupport>.freeze, ["< 5.0", ">= 3.2"])
      s.add_runtime_dependency(%q<activerecord>.freeze, ["< 5.0", ">= 3.2"])
      s.add_runtime_dependency(%q<mysql2>.freeze, [">= 0"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0.0"])
      s.add_dependency(%q<database_cleaner>.freeze, [">= 0"])
      s.add_dependency(%q<activesupport>.freeze, ["< 5.0", ">= 3.2"])
      s.add_dependency(%q<activerecord>.freeze, ["< 5.0", ">= 3.2"])
      s.add_dependency(%q<mysql2>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0.0"])
    s.add_dependency(%q<database_cleaner>.freeze, [">= 0"])
    s.add_dependency(%q<activesupport>.freeze, ["< 5.0", ">= 3.2"])
    s.add_dependency(%q<activerecord>.freeze, ["< 5.0", ">= 3.2"])
    s.add_dependency(%q<mysql2>.freeze, [">= 0"])
  end
end
