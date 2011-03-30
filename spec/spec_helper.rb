require 'rubygems'
require 'sinatra'
require 'slim'
require 'haml'
require 'mongoid'

require File.join(File.dirname(__FILE__), '..', 'application.rb')

require 'rack/test'
require 'rspec'


RSpec.configure do |config|

  config.include Rack::Test::Methods

  def app
    Application
  end
end