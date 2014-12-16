# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: paperclip_montage 0.1.2 ruby lib

Gem::Specification.new do |s|
  s.name = "paperclip_montage"
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Daniel W. Crompton"]
  s.date = "2014-12-16"
  s.description = "This module stores the image files in Redis"
  s.email = ["paperclip+montage@specialbrands.net"]
  s.extra_rdoc_files = [
    "LICENSE",
    "README.md"
  ]
  s.files = [
    ".rspec",
    ".travis.yml",
    "Gemfile",
    "Guardfile",
    "LICENSE",
    "README.md",
    "Rakefile",
    "config/Guardfile",
    "lib/generators/paperclip_montage/USAGE",
    "lib/generators/paperclip_montage/paperclip_montage_generator.rb",
    "lib/paperclip/montage.rb",
    "lib/paperclip/myversion.rb",
    "lib/paperclip_montage.rb",
    "paperclip_montage.gemspec",
    "spec/fixtures/valid.jpg",
    "spec/fixtures/valid1.png",
    "spec/fixtures/valid2.png",
    "spec/fixtures/valid3.png",
    "spec/fixtures/valid4.png",
    "spec/paperclip/montage_spec.rb",
    "spec/rails-app/.gitignore",
    "spec/rails-app/.rspec",
    "spec/rails-app/Gemfile",
    "spec/rails-app/Guardfile",
    "spec/rails-app/README.rdoc",
    "spec/rails-app/Rakefile",
    "spec/rails-app/app/assets/images/.keep",
    "spec/rails-app/app/assets/javascripts/application.js",
    "spec/rails-app/app/assets/stylesheets/application.css",
    "spec/rails-app/app/controllers/application_controller.rb",
    "spec/rails-app/app/controllers/concerns/.keep",
    "spec/rails-app/app/helpers/application_helper.rb",
    "spec/rails-app/app/models/.keep",
    "spec/rails-app/app/models/avatar.rb",
    "spec/rails-app/app/models/avatars_meta.rb",
    "spec/rails-app/app/models/concerns/.keep",
    "spec/rails-app/app/models/meta.rb",
    "spec/rails-app/app/views/layouts/application.html.erb",
    "spec/rails-app/bin/bundle",
    "spec/rails-app/bin/rails",
    "spec/rails-app/bin/rake",
    "spec/rails-app/bin/spring",
    "spec/rails-app/config.ru",
    "spec/rails-app/config/Guardfile",
    "spec/rails-app/config/application.rb",
    "spec/rails-app/config/boot.rb",
    "spec/rails-app/config/database.yml",
    "spec/rails-app/config/environment.rb",
    "spec/rails-app/config/environments/development.rb",
    "spec/rails-app/config/environments/production.rb",
    "spec/rails-app/config/environments/test.rb",
    "spec/rails-app/config/initializers/assets.rb",
    "spec/rails-app/config/initializers/backtrace_silencers.rb",
    "spec/rails-app/config/initializers/cookies_serializer.rb",
    "spec/rails-app/config/initializers/filter_parameter_logging.rb",
    "spec/rails-app/config/initializers/inflections.rb",
    "spec/rails-app/config/initializers/mime_types.rb",
    "spec/rails-app/config/initializers/session_store.rb",
    "spec/rails-app/config/initializers/wrap_parameters.rb",
    "spec/rails-app/config/locales/en.yml",
    "spec/rails-app/config/routes.rb",
    "spec/rails-app/config/secrets.yml",
    "spec/rails-app/db/migrate/20141212000615_create_avatars.rb",
    "spec/rails-app/db/migrate/20141212000731_create_meta.rb",
    "spec/rails-app/db/migrate/20141214193102_create_avatars_meta.rb",
    "spec/rails-app/db/schema.rb",
    "spec/rails-app/db/seeds.rb",
    "spec/rails-app/public/404.html",
    "spec/rails-app/public/422.html",
    "spec/rails-app/public/500.html",
    "spec/rails-app/public/favicon.ico",
    "spec/rails-app/public/robots.txt",
    "spec/rails-app/spec/models/avatar_spec.rb",
    "spec/rails-app/spec/models/avatars_meta_spec.rb",
    "spec/rails-app/spec/models/meta_spec.rb",
    "spec/rails-app/spec/rails_helper.rb",
    "spec/rails-app/spec/spec_helper.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = "http://github.com/webhat/paperclip_montage"
  s.licenses = ["LGPLv2"]
  s.rubygems_version = "2.2.2"
  s.summary = "Paperclip Montage"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<paperclip>, [">= 0"])
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

