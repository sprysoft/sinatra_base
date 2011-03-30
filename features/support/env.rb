require 'rubygems'
require 'sinatra'
require 'slim'
require 'haml'
require 'mongoid'

require File.join(File.dirname(__FILE__), '..', '..', 'application.rb')
require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Application.set(:environment, :test)

World do
  Capybara.app = Application
  include Capybara
  include RSpec::Expectations
  include RSpec::Matchers
end
