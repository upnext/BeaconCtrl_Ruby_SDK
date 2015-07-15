# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: beacon_client 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "beacon_client"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Adrian Wozniak"]
  s.date = "2015-07-15"
  s.description = "TODO: longer description of your gem"
  s.email = "adrian.wozniak@ita-prog.pl"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    ".document",
    ".rspec",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "VERSION",
    "app/models/beacon_client/activity.rb",
    "app/models/beacon_client/application.rb",
    "app/models/beacon_client/application_setting.rb",
    "app/models/beacon_client/base.rb",
    "app/models/beacon_client/beacon.rb",
    "app/models/beacon_client/custom_attribute.rb",
    "app/models/beacon_client/location.rb",
    "app/models/beacon_client/resource.rb",
    "app/models/beacon_client/sub_resource.rb",
    "app/models/beacon_client/trigger.rb",
    "app/models/beacon_client/user.rb",
    "app/models/beacon_client/zone.rb",
    "app/models/beacon_client/zone_beacon.rb",
    "beacon_client.gemspec",
    "lib/beacon_client.rb",
    "lib/beacon_client/autoload.rb",
    "lib/beacon_client/client.rb",
    "lib/beacon_client/configuration.rb",
    "lib/beacon_client/engine.rb",
    "lib/beacon_client/error.rb",
    "lib/beacon_client/relation.rb",
    "lib/beacon_client/validator.rb",
    "spec/app/models/user_spec.rb",
    "spec/app/models/zone_spec.rb",
    "spec/lib/beacon_client_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = "http://github.com/Eraden/beacon_client"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.8"
  s.summary = "TODO: one-line summary of your gem"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<faraday>, [">= 0"])
      s.add_runtime_dependency(%q<oauth2>, [">= 0"])
      s.add_runtime_dependency(%q<rest-client>, [">= 0"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 2.0.1"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>, [">= 0"])
    else
      s.add_dependency(%q<faraday>, [">= 0"])
      s.add_dependency(%q<oauth2>, [">= 0"])
      s.add_dependency(%q<rest-client>, [">= 0"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
      s.add_dependency(%q<jeweler>, ["~> 2.0.1"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<rspec-rails>, [">= 0"])
    end
  else
    s.add_dependency(%q<faraday>, [">= 0"])
    s.add_dependency(%q<oauth2>, [">= 0"])
    s.add_dependency(%q<rest-client>, [">= 0"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
    s.add_dependency(%q<jeweler>, ["~> 2.0.1"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<rspec-rails>, [">= 0"])
  end
end

