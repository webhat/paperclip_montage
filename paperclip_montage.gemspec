# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: paperclip_montage 0.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "paperclip_montage"
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Daniel W. Crompton"]
  s.date = "2014-12-11"
  s.description = "This module stores the image files in Redis"
  s.email = ["paperclip+montage@specialbrands.net"]
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    ".rspec",
    "Gemfile",
    "Gemfile.lock",
    "Guardfile",
    "README.md",
    "Rakefile",
    "config/Guardfile",
    "lib/generators/paperclip_montage/USAGE",
    "lib/generators/paperclip_montage/paperclip_montage_generator.rb",
    "lib/paperclip/montage.rb",
    "lib/paperclip/myversion.rb",
    "lib/paperclip/watermark.rb",
    "lib/paperclip_montage.rb",
    "paperclip_montage.gemspec",
    "spec/paperclip/montage_spec.rb",
    "spec/spec_helper.rb",
    "spec/tmp/montage.jpg",
    "spec/tmp/test.jpg"
  ]
  s.homepage = "http://github.com/webhat/paperclip_montage"
  s.licenses = ["LGPLv2"]
  s.rubygems_version = "2.2.2"
  s.summary = "Paperclip Montage"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<paperclip>, [">= 0"])
      s.add_runtime_dependency(%q<redis>, [">= 0"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 2.0.1"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_development_dependency(%q<guard-rspec>, [">= 0"])
      s.add_development_dependency(%q<guard-yard>, [">= 0"])
      s.add_development_dependency(%q<rails>, [">= 3.1.0"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>, [">= 0"])
      s.add_development_dependency(%q<coveralls>, [">= 0"])
    else
      s.add_dependency(%q<paperclip>, [">= 0"])
      s.add_dependency(%q<redis>, [">= 0"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
      s.add_dependency(%q<jeweler>, ["~> 2.0.1"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<guard-rspec>, [">= 0"])
      s.add_dependency(%q<guard-yard>, [">= 0"])
      s.add_dependency(%q<rails>, [">= 3.1.0"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<rspec-rails>, [">= 0"])
      s.add_dependency(%q<coveralls>, [">= 0"])
    end
  else
    s.add_dependency(%q<paperclip>, [">= 0"])
    s.add_dependency(%q<redis>, [">= 0"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
    s.add_dependency(%q<jeweler>, ["~> 2.0.1"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<guard-rspec>, [">= 0"])
    s.add_dependency(%q<guard-yard>, [">= 0"])
    s.add_dependency(%q<rails>, [">= 3.1.0"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<rspec-rails>, [">= 0"])
    s.add_dependency(%q<coveralls>, [">= 0"])
  end
end

