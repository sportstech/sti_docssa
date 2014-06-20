$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "sti_docssa/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "sti_docssa"
  s.version     = StiDocssa::VERSION
  s.authors     = ["Adam Bertrand"]
  s.email       = ["adam@sportstechinc.com"]
  s.homepage    = "http://www.sportstechinc.com"
  s.summary     = "STI Front End Generator"
  s.description = "Generates template stylesheets for new STI projects"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.0"

end
