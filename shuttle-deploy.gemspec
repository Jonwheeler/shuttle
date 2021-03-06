require File.expand_path("../lib/shuttle/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "shuttle-deploy"
  s.version     = Shuttle::VERSION
  s.summary     = "Minimalistic deployment tool"
  s.description = "Minimalistic deployment tool for small and one-server applications"
  s.homepage    = "https://github.com/sosedoff/shuttle"
  s.authors     = ["Dan Sosedoff"]
  s.email       = ["dan.sosedoff@gmail.com"]
  s.license     = "MIT"

  s.add_development_dependency "rake",      "~> 10"
  s.add_development_dependency "rspec",     "~> 2.13"
  s.add_development_dependency "simplecov", "~> 0.7"

  s.add_dependency "net-ssh",          "~> 2.6"
  s.add_dependency "net-ssh-session",  "~> 0.1"
  s.add_dependency "terminal_helpers", "~> 0.1"
  s.add_dependency "chronic_duration", "~> 0.9"
  s.add_dependency "hashr",            "~> 0.0.22"
  s.add_dependency "safe_yaml",        "~> 1.0"
  s.add_dependency "toml",             "~> 0.0"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{|f| File.basename(f)}
  s.require_paths = ["lib"]
end
