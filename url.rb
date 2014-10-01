require 'sinatra'

get '/' do
  puts url('/')
  url('/')
end
