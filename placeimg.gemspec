# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "placeimg/version"

Gem::Specification.new do |s|
  s.name        = "placeimg"
  s.version     = Placeimg::VERSION
  s.authors     = ["Kelli Shaver"]
  s.email       = ["kelli@kellishaver.com"]
  s.homepage    = "https://github.com/kellishaver/placeimg"
  s.summary     = %q{Easily add placeholder images to your HTML.}
  s.description = %q{PlaceImg lets you easily add placeholder images to your HTML by generating images with RMagick and serving them as data URLs via an easy to use helper method.}
  s.license     = "MIT"

  s.rubyforge_project = "placeimg"

  s.files         = `git ls-files`.split("\n")
  s.require_paths = ["lib"]

  s.add_dependency "rails", ">= 3.0"
  s.add_dependency "rmagick"
  s.add_development_dependency "rspec"

end
