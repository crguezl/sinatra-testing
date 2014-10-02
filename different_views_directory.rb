require 'sinatra'
require 'sinatra/reloader' if development?

puts settings.root

set :views, settings.root+'/templates'

get '/' do
  erb :index
end
