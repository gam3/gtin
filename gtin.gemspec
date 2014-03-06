# -*- encoding: utf-8 -*-

$:.unshift File.expand_path("./lib")
require 'gtin'

Gem::Specification.new do |s|
  s.name = "gtin"
  s.version = GTIN::VERSION

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["G. Allen Morris III"]
  s.description = "The Fluential Class Tagger - This is the ruby version."
  s.email = ["gam3@fluential.com"]
  s.executables = ["gtin_check"]
  s.files = [ 'lib/gtin.rb', 'lib/gtin/string.rb', 'bin/gtin_check' ]
  s.homepage = "https://github.com/gam3/gtin"
  s.require_paths = ["lib"]
  s.rubyforge_project = "GTIN"
  s.summary = "GTIN/UPC package"
end

