Dir["./models/**/*.rb"].each { |model| require model }
class Application < Sinatra::Base

  configure do
    set :root, File.dirname(__FILE__)
    set :static, true

    set :template, :slim
    # Haml & Sass options
    set :sass, :style => :compressed
  end

  Mongoid.configure do |config|
    if ENV['MONGOHQ_URL']
      conn = Mongo::Connection.from_uri(ENV['MONGOHQ_URL'])
      uri = URI.parse(ENV['MONGOHQ_URL'])
      config.master = conn.db(uri.path.gsub(/^\//, ''))
    else
      config.master = Mongo::Connection.from_uri("mongodb://localhost:27017").db('test')
    end
  end

  get '/' do
    slim :index
  end

  get '/stylesheets/application.css' do
    sass :application
  end

end