# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'bundler/version'

Gem::Specification.new do |s|
  s.name        = "koda"
  s.version     = "0.0.12"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Marcel du Prez", "Derek Ekins"]
  s.email       = ["marceldupr@gmail.com", "derek@spathi.com"]
  s.homepage    = "https://github.com/KodaFramework"
  s.summary     = "The Koda Framework - the only toolkit you will need to build websites, mobile apps and many more"
  s.description = "The Koda Framework allows you to create websites, iphone apps, android apps or single page js apps apps and manages your data with a very simple, yet versatile and configurable admin section."

  s.required_rubygems_version = ">= 1.3.6"

  s.add_dependency 'mongo'
  s.add_dependency 'sinatra'
  s.add_dependency 'rack-methodoverride-with-params'
  s.add_dependency 'sinatra-jsonp'

  s.add_dependency 'bson_ext'
  s.add_dependency 'shared-mime-info'
  s.add_dependency 'dalli'
  s.add_dependency 'rest-client'

  s.add_development_dependency 'rspec', '>= 2.8'
  s.add_development_dependency 'rack-test'
  s.add_development_dependency 'shotgun'
  s.add_development_dependency 'watchr'

  s.files        = Dir.glob("{public/**/*,lib}/**/*")
  #s.executables  = ['bundle']
  s.require_path = 'lib'
end