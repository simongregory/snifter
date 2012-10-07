# -*- encoding: utf-8 -*-
lib = File.expand_path File.join(File.dirname(__FILE__), 'lib')
$:.unshift lib unless $:.include?(lib)

require 'bundler'
require 'twit_sniff/version'

Gem::Specification.new do |gem|
  gem.name                      = TwitSniff::NAME
  gem.version                   = TwitSniff::VERSION
  gem.platform                  = Gem::Platform::RUBY
  gem.authors                   = ["Simon Gregory"]
  gem.email                     = "simon.gregory@bbc.co.uk"
  gem.summary                   = "BBC iPlayer Twitter Monitor Robot"
  gem.description               = "Keeping an eye on twitter to monitor BBC iPlayer status"
  gem.required_rubygems_version = ">= 1.3.6"
  gem.require_path              = ['lib']
  gem.files                      = Dir['**/*']
  gem.files.reject!              { |fn| fn.match /\.(DS_Store|svn|git|tmproj|gem)|tmp/ }
  gem.test_files                 = Dir["test/*_test.rb"]
  gem.executables               = ['twit-sniff']
  gem.add_dependency 'twitter'
  gem.add_development_dependency 'rake', '>= 0.9.2'
  gem.add_development_dependency 'shoulda'
  gem.add_development_dependency 'mocha'
  gem.add_development_dependency 'simplecov'
  gem.require_paths << 'lib'
end
