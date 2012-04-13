# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_localize'
  s.version     = '0.0.1'
  s.summary     = 'Adds internationalization support to Spree'
  s.description = 'Adds internationalization support to Spree'
  s.required_ruby_version = '>= 1.8.7'

  s.author            = 'Ryan Bigg'
  s.email             = 'ryan@spreecommerce.com'
  s.homepage          = 'http://www.spreecommerce.com'

  s.files         = `git ls-files`.split("\n")
  #s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'

  s.add_dependency 'spree_core', '~> 1.0'
  s.add_dependency 'i18n'
  s.add_dependency 'rails-i18n'

  s.add_development_dependency 'capybara', '1.0.1'
  s.add_development_dependency 'factory_girl'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 2.8'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'launchy'
end
