# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "capi/version"

Gem::Specification.new do |s|
  s.name        = "capi"
  s.version     = Capi::VERSION
  s.authors     = ["Mokevnin Kirill"]
  s.email       = ["mokevnin@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{capistrano tasks}
  s.description = %q{capistrano tasks}

  s.rubyforge_project = "capi"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
