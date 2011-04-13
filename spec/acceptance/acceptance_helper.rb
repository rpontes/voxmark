require File.expand_path(File.dirname(__FILE__) + "/../spec_helper")
require "steak"
require 'capybara/rails'

module Steak::Capybara
  include Rack::Test::Methods
  include Capybara
  
  def app
    ::Rails.application
  end
end

Rspec.configure do |config|
  Capybara.default_selector = :css
  
  config.use_transactional_fixtures = false
  
  DatabaseCleaner.strategy = :truncation  
  config.before(:each) { DatabaseCleaner.start; }
  config.after(:each)  { DatabaseCleaner.clean; }

  config.before(:each) do
    Capybara.current_driver = :selenium if example.options[:js]
  end
    
  config.after(:each)  do
    Capybara.use_default_driver if example.options[:js]
  end    
end


RSpec.configuration.include Steak::Capybara, :type => :acceptance

# Put your acceptance spec helpers inside /spec/acceptance/support
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}
