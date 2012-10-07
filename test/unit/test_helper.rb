require 'simplecov'
SimpleCov.start do
  add_filter 'test'
end

require "rubygems"
require "bundler"
Bundler.require :development, :default

lib = File.expand_path(File.join(File.dirname(__FILE__), '..', '..', 'lib'))
$:.unshift lib unless $:.include? lib

test = File.expand_path(File.join(File.dirname(__FILE__), '..'))
$:.unshift test unless $:.include? test

require 'twit_sniff'

def credentials
  @credentials ||= YAML::load(File.read(File.expand_path(File.join(File.dirname(__FILE__), '..', '..','credentials.yml'))))
end

TwitSniff.setup(credentials['consumer_key'], credentials['consumer_secret'])
