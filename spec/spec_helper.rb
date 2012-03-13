# Configure Rails Environment
ENV["RAILS_ENV"] = "test"

require File.expand_path("../dummy/config/environment.rb",  __FILE__)

require 'rspec/rails'

Dir[File.join(File.dirname(__FILE__), "support/**/*.rb")].each {|f| require f }

# Requires factories defined in spree_core
require 'spree/core/testing_support/factories'
require 'spree/core/url_helpers'

RSpec.configure do |config|
  config.include Spree::Core::UrlHelpers
  config.mock_with :rspec
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  config.before do
    # Set I18n locale based on test that is running
    # Directory structure is purpose-built for this
    #
    # This part parses out the LOCALE for it
    # spec/requests/LOCALE/test/goes_here_spec.rb
    parts = example.file_path.split("/")
    locale = parts.slice(parts.index("spec")..-1)[2]
    I18n.locale = Spree::Config[:default_locale] = locale
  end
end
