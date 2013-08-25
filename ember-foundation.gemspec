$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ember-foundation/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ember-foundation"
  s.version     = EmberFoundation::VERSION
  s.authors     = ["Tom Scott"]
  s.email       = %w(tubbo@psychedeli.ca)
  s.homepage    = "http://github.com/tubbo/ember-foundation"
  s.summary     = "A set of views and mixins for Ember.js & Foundation"
  s.description = %(
    A set of views and mixins that make it easier to use
    Ember.js with Zurb Foundation.
  )
  s.files = `git ls-files`.split "\n"
  s.test_files = s.files.select { |file| file =~ /\Aspec/ }

  s.add_dependency "rails"
  s.add_dependency 'ember-rails'
  s.add_dependency 'ember_script-rails'

  s.add_development_dependency "sqlite3"
end
