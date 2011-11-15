# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "omniauth-workmate"
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Iskander Haziev"]
  s.date = "2011-11-15"
  s.description = "WorkMatw strategy for OmniAuth."
  s.email = "gvalmon@gmail.com"
  s.extra_rdoc_files = ["README.md", "lib/omniauth-workmate.rb", "lib/omniauth-workmate/version.rb", "lib/omniauth/strategies/workmate.rb"]
  s.files = ["Gemfile", "Manifest", "README.md", "Rakefile", "lib/omniauth-workmate.rb", "lib/omniauth-workmate/version.rb", "lib/omniauth/strategies/workmate.rb", "omniauth-github.gemspec", "omniauth-workmate.gemspec"]
  s.homepage = "http://github.com/workmate/omniauth-workmate"
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Omniauth-workmate", "--main", "README.md"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "omniauth-workmate"
  s.rubygems_version = "1.8.10"
  s.summary = "WorkMatw strategy for OmniAuth."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<omniauth>, [">= 0"])
      s.add_runtime_dependency(%q<omniauth-oauth2>, [">= 0"])
    else
      s.add_dependency(%q<omniauth>, [">= 0"])
      s.add_dependency(%q<omniauth-oauth2>, [">= 0"])
    end
  else
    s.add_dependency(%q<omniauth>, [">= 0"])
    s.add_dependency(%q<omniauth-oauth2>, [">= 0"])
  end
end
