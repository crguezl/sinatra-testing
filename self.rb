# Test self y class inside a route
require 'sinatra'
require "sinatra/reloader" if development?
require 'pp'

get '/' do
  p self.class # Sinatra::Application
  pp self
  "hello"
end

