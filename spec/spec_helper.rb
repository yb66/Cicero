# encoding: UTF-8

require "rspec"

unless Kernel.respond_to?(:require_relative)
  module Kernel
    def require_relative(path)
      require File.join(File.dirname(caller[0]), path.to_str)
    end
  end
end

# code coverage
require 'simplecov'
SimpleCov.start do
  add_filter "/vendor/"
end


Spec_dir = File.expand_path( File.dirname __FILE__ )


Dir[ File.join( Spec_dir, "/support/**/*.rb")].each do |f| 
  puts "requiring #{f}"
  require f
end

RSpec.configure do |config|
end
