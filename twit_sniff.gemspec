# -*- encoding: utf-8 -*-
lib = File.expand_path File.join(File.dirname(__FILE__), 'lib')
$:.unshift lib unless $:.include?(lib)

require 'bundler'
require 'twit_sniff/version'

Gem::Specification.new do |s|
  s.name                      = TwitSniff::NAME
  s.version                   = TwitSniff::VERSION
  s.platform                  = Gem::Platform::RUBY
  s.authors                   = ["Simon Gregory"]
  s.email                     = "simon.gregory@bbc.co.uk"
  s.summary                   = "BBC iPlayer Twitter Monitor Robot"
  s.description               = "Keeping an eye on twitter to monitor BBC iPlayer status"
  s.required_rubygems_version = ">= 1.3.6"
  s.require_path              = ['lib']
  s.files                      = Dir['**/*']
  s.files.reject!              { |fn| fn.match /\.(DS_Store|svn|git|tmproj|gem)|tmp/ }
  s.test_files                 = Dir["test/*_test.rb"]
  s.executables               = ['twit-sniff']
  s.add_dependency 'twitter'
  s.add_development_dependency 'rake', '>= 0.9.2'
  s.add_development_dependency 'shoulda'
  s.add_development_dependency 'mocha'
  s.require_paths << 'lib'
end
