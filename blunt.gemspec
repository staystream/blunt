# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{blunt}
  s.version = "1.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jamie Brough"]
  s.date = %q{2009-04-17}
  s.default_executable = %q{blunt}
  s.description = %q{FIXME (describe your package)}
  s.email = %q{jbrough@homeaway.com}
  s.executables = ["blunt"]
  s.extra_rdoc_files = ["History.txt", "README.txt", "bin/blunt"]
  s.files = [".gitignore", "History.txt", "README.txt", "Rakefile", "bin/blunt", "lib/blunt.rb", "lib/blunt/blunt.rb", "spec/blunt_spec.rb", "spec/spec_helper.rb", "test/test_blunt.rb"]
  s.has_rdoc = true
  s.homepage = %q{}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{blunt}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{FIXME (describe your package)}
  s.test_files = ["test/test_blunt.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bones>, [">= 2.5.0"])
    else
      s.add_dependency(%q<bones>, [">= 2.5.0"])
    end
  else
    s.add_dependency(%q<bones>, [">= 2.5.0"])
  end
end
