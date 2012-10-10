require 'simplecov'
SimpleCov.start do
  add_filter 'test'
end

require "rubygems"
require "bundler"
Bundler.require :development, :default
