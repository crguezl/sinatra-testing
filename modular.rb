require 'sinatra/base'

class MyApp < Sinatra::Base
  enable :sessions
  set :foo, 'bar'

  get '/' do
    puts settings.foo
    'Hello world!'
  end
end

# See http://rubydoc.info/github/rack/rack/Rack/Handler
# and http://rubydoc.info/github/rack/rack/Rack/Handler/Thin
Rack::Handler::Thin.run MyApp.new
