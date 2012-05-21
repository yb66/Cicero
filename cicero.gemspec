# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "cicero/version"

Gem::Specification.new do |s|
  s.name        = "cicero"
  s.version     = Cicero::VERSION
  s.authors     = ["Rogelio Guzman"]
  s.email       = ["chinog9@gmail.com"]
  s.homepage    = "http://github.com/rogeliog/cicero"
  s.summary     = %q{A lorem Ipsum generator}
  s.description = %q{A lorem Ipsum generator}

  s.add_development_dependency "rspec", "~>2.8"
  s.add_development_dependency "simplecov", "~>0.6"
  s.add_development_dependency "rake"
  s.add_development_dependency "yard", "~>0.8"
  s.rubyforge_project = "cicero"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
