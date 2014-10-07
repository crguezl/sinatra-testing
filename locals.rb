require 'sinatra'
require 'sinatra/reloader' if development?

puts settings.root

set :views, settings.root+'/templates'

get '/' do
  erb :chuchu, :locals => { :a => 1, :b => 2 }
end
