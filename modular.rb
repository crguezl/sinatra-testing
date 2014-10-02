require 'sinatra/base'

class MyApp < Sinatra::Base
  enable :sessions
  set :foo, 'bar'

  get '/' do
    puts settings.foo
    'Hello world!'
  end
end

Rack::Handler::Thin.run MyApp.new
