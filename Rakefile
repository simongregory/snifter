require 'rubygems'
require 'bundler'
Bundler.require

require 'rake/testtask'

namespace :test do
  Rake::TestTask.new(:units) do |t|
    t.libs << "test/unit"
    t.test_files = FileList["test/unit/*_test.rb"]
    t.verbose = true
  end
end

task :test => 'test:units'
task :default => :test
