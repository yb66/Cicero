# encoding: UTF-8

require 'bundler/gem_tasks'

require "rspec/core/rake_task" # RSpec 2.0

task :default => :spec
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = 'spec/*_spec.rb'
  spec.rspec_opts = ['--backtrace']
end

desc "(Re-) generate documentation and place it in the docs/ dir. Open the index.html file in there to read it."
task :docs => :"docs:yard"  
namespace :docs do
  require 'yard'
  YARD::Rake::YardocTask.new do |t|
    t.files   = ['lib/**/*.rb', 'spec/**/*.rb']
    t.options = ['-odocs/', '--no-private'] # optional
  end
end